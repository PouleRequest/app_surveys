<?php

// Force loading of CActiveRecord now so that we can import our *Relation classes based on C*Relation classes
class_exists('CActiveRecord');

// Preload our *Relation classes
Yii::setPathOfAlias('MortimerActiveRecord', dirname(__FILE__));
Yii::import('MortimerActiveRecord.MortimerBelongsToRelation', true);
Yii::import('MortimerActiveRecord.MortimerHasOneRelation', true);
Yii::import('MortimerActiveRecord.MortimerHasManyRelation', true);

interface MortimerPolymorphicRelation {}

/**
 * MortimerActiveRecord adds common extensions to CActiveRecord which are:
 *    - Single Table Inheritance (STI)
 *    - Polymorphic associations (for BELONGS_TO, HAS_ONE and HAS_MANY)
 *    - Object oriented associations (optionable):
 *      - associate records automatically on setter call.
 *      - automatic saving of new related records on parent save.
 *      - customizable scenario when removing records from relation.
 *    - Automatic timestamps if DB column *exists* (no need to worry adding a behaviour or not)
 *
 * The goal is to make RoR user feel more at home.
 *
 * @author    Pascal Hurni <http://github.com/phurni>
 * @copyright 2013 Pascal Hurni
 * @license   MIT
 */
class MortimerActiveRecord extends CActiveRecord
{
  // override default relation types
  const BELONGS_TO = 'MortimerBelongsToRelation';
  const HAS_ONE    = 'MortimerHasOneRelation';
  const HAS_MANY   = 'MortimerHasManyRelation';

  // add polymorphic relation types
  const BELONGS_TO_POLYMORPHIC = 'MortimerBelongsToPolymorphicRelation';
  const HAS_ONE_POLYMORPHIC    = 'MortimerHasOnePolymorphicRelation';
  const HAS_MANY_POLYMORPHIC   = 'MortimerHasManyPolymorphicRelation';
  
  // need to pass a real CActiveRecord class name for BELONGS_TO relation to avoid frameword code to collapse.
  const POLYMORPHIC = 'MortimerActiveRecord';
  
  /// DB column name used to store the STI record type. You may override it to your likings.
  public static $typeColumnName = "type";
  
  /// DB column names for automatic timestamps
  public static $createdAtColumnName = 'created_at';
  public static $createdOnColumnName = 'created_on';
  public static $updatedAtColumnName = 'updated_at';
  public static $updatedOnColumnName = 'updated_on';

  // subclasses names cache. Used to construct finders query condition for STI.
  private $_subclasses;

  //=============================================================================
  // Hook in, delegate to our handlers

  protected function beforeValidate() {
    $this->_updateBelongsToIds(false);
    $result = parent::beforeValidate();
    if (!$this->_validateRelatedRecords())
      return false;
    return $result;
  }
  
  protected function beforeSave() {
    $this->_stiBeforeSave();
    $this->_timestampsBeforeSave();
    $this->_updateBelongsToIds(true);
    return parent::beforeSave();
  }

  protected function afterSave() {
    $this->_saveRelatedRecords();
    return parent::afterSave();
  }
  
  protected function beforeDelete() {
    $this->_clearRelatedRecords();
    return parent::beforeDelete();
  }

  //=============================================================================
  // Helper methods

  // Internal helper which helps us determine if the given relation is a customized one or not
  protected function isRelationSupported($relation) {
    return empty($relation->on) &&
             empty($relation->through) &&
             empty($relation->condition) &&
             empty($relation->group) &&
             empty($relation->join) &&
             empty($relation->having) &&
             empty($relation->scopes);
  }

  // Helper that returns the base class name of the passed $object or self.
  // Used to store base class for STI polymorphic associations.
  public function getStiBaseClass($object = null) {
    $current = get_class($object ? $object : $this);
    foreach (class_parents($object ? $object : $this) as $parent) {
      if ($parent == "MortimerActiveRecord") break;
      $current = $parent;
    }
    return $current;
  }
  
  //=============================================================================
  // Relations setters
  //
  // Convert IDs (PrimaryKey) assigned to BELONGS_TO and HAS_MANY relations
  // to their matching records, polymorphic aware.

  // Override magic setter, so that we may transform PrimaryKey on relation to their record
  public function __set($name,$value) {
    // is it a relation?
    if (array_key_exists($name, $this->getMetaData()->relations)) {
      $relation = $this->getMetaData()->relations[$name];
      if (isset($relation)) {
        // Yes, call the correct setter
        if ($relation instanceof MortimerBelongsToRelation)
          return $this->_setBelongsToRecord($relation, $value);
        elseif ($relation instanceof MortimerHasOneRelation)
          return $this->_setHasManyRecord($relation, array($value));
        elseif ($relation instanceof MortimerHasManyRelation)
          return $this->_setHasManyRecords($relation, $value);
      }
    }
    return parent::__set($name,$value);
  }
  
  private function _setBelongsToRecord($relation, $value) {
    // Apply only for supported relations
    if ($this->isRelationSupported($relation)) {
      // Resseting the relation?
      if ($value === null) {
        // Yes, put null everywhere
        $this->setAttribute($relation->foreignKey, null);
        if ($relation instanceof MortimerPolymorphicRelation)
          $this->setAttribute($relation->typeColumn, null);
      }
      else {
        // If the value is a PK, fetch its record. Only valid for non polymorphic relation
        if (!is_object($value)) {
          if ($relation instanceof MortimerPolymorphicRelation)
            throw new CDbException("Can't set polymorphic relation with PK only!");
          
          // Assign the attribute
          $this->setAttribute($relation->foreignKey, $value);
          
          // Load the record (given by attribute value)
          $value = $this->getRelated($relation->name, true);
        }
        
        // Set the attributes (foreignKey and type if polymorphic) from the record data
        $this->setAttribute($relation->foreignKey, $value->getPrimaryKey());
        if ($relation instanceof MortimerPolymorphicRelation)
          $this->setAttribute($relation->typeColumn, $this->getStiBaseClass($value));
      }
      
      // Put the record in the relation cache
      parent::__set($relation->name, $value);
    }
  }

  private function _setHasManyRecords($relation, $value) {
    // Apply only for supported relations
    if ($this->isRelationSupported($relation)) {
      // Split the array into records and ids
      $records = array();
      $ids = array();
      foreach ($value as $item) {
        is_object($item) ? $records[] = $item : $ids[] = $item;
      }
      
      // Load the missing records (only possible for non polymorphic relation)
      if (!empty($ids)) {
        if ($relation instanceof MortimerPolymorphicRelation)
          throw new CDbException("Can't set polymorphic relation with PK only!");
          
        $records = array_merge($records, CActiveRecord::model($relation->className)->findAllByPk($ids));
      }
      
      // Check for correct related object types
      foreach ($records as $record) {
        if (! $record instanceof $relation->className)
          throw new CDbException("Invalid type for related object (".get_class($record)." for $relation->name)");
      }
      
      // Should we apply directly?
      if ($relation->autoApply) {
        // If autoSave is enabled, save the new records
        if ($relation->autoSave) {
          $this->_saveNewRecords($records);
        }
        
        // link the current records
        $this->_saveHasManyRelation($relation, $records);
      }
      
      // Put the records in the relation cache
      parent::__set($relation->name, $records);
    }
  }

  //=============================================================================
  // Convert object behind BELONGS_TO to their id attribute, polymorphic aware.

  private function _updateBelongsToIds($saveTime = true) {
    foreach ($this->getMetaData()->relations as $relation) {
      if ($relation instanceof MortimerBelongsToRelation) {
        // Do we need to populate at validation time
        if (!$saveTime && count($this->getValidators($relation->foreignKey)) == 0)
          continue;
          
        // apply only when target was loaded, don't apply when not supported (customized relation)
        if (!$this->hasRelated($relation->name) || !$this->isRelationSupported($relation))
          continue;

        // Determine target id and type
        $target_id = null;
        $target_type = null;
        if (($related = $this->getRelated($relation->name, false)) !== null) {
          if (is_object($related)) {
            if ($related->isNewRecord && $saveTime) {
              if ($relation->autoSave) {
                if (!$related->save())
                  // TODO: Instead of throwing an exception, we should abort the base record save operation with a validation error.
                  throw new CDbException("Related record can't be saved (autoSave enabled)!");
              }
              else
                throw new CDbException("Related record not saved, can't save base record!");
            }
            $target_id = $related->getPrimaryKey();
            $target_type = $this->getStiBaseClass($related);
          } else {
            $target_id = $related;
          }
        }
        
        // Set the foreignKey (and type if polymorphic) attributes
        $this->setAttribute($relation->foreignKey, $target_id);
        if ($relation instanceof MortimerPolymorphicRelation) {
          $this->setAttribute($relation->typeColumn, $target_type);
        }
      }
    }
  }

  //=============================================================================
  // Save related objects behind HAS_MANY or HAS_ONE, polymorphic aware.
  
  private function _clearRelatedRecords() {
    foreach ($this->getMetaData()->relations as $relation) {
      if ($relation instanceof MortimerHasManyRelation || $relation instanceof MortimerHasOneRelation) {
        if (!$this->isRelationSupported($relation))
          continue;
        
        $records = $relation instanceof MortimerHasOneRelation ? array($this->getRelated($relation->name, false)) : $this->getRelated($relation->name, false);

        $criteria = new CDbCriteria();
        $criteria->addInCondition(CActiveRecord::model($relation->className)->tableSchema->primaryKey, array_map(function($item){ return $item->primaryKey;}, $records));
        $this->_clearRecords($relation, $criteria);
      }
    }
  }  
  
  // ensure new related records are valid
  private function _validateRelatedRecords() {
    foreach ($this->getMetaData()->relations as $relation) {
      if ($relation instanceof MortimerHasManyRelation || $relation instanceof MortimerHasOneRelation) {
        if (!$this->hasRelated($relation->name) || !$this->isRelationSupported($relation) || !$relation->autoSave)
          continue;
        
        $records = $relation instanceof MortimerHasOneRelation ? array($this->getRelated($relation->name, false)) : $this->getRelated($relation->name, false);
        foreach ($records as $record) {
          if (!$record->validate())
            return false;
        }
      }
    }
    return true;
  }

  private function _saveRelatedRecords() {
    foreach ($this->getMetaData()->relations as $relation) {
      if ($relation instanceof MortimerHasManyRelation || $relation instanceof MortimerHasOneRelation) {
        if (!$this->hasRelated($relation->name) || !$this->isRelationSupported($relation))
          continue;
          
        // Still something to do? (all work may have be done in the __set() function)
        if ($relation->autoSave && $relation->autoApply)
          continue;

        $records = $relation instanceof MortimerHasOneRelation ? array($this->getRelated($relation->name, false)) : $this->getRelated($relation->name, false);

        // Okay, lets save the new records
        $this->_saveNewRecords($records);
        
        // link the current records
        $this->_saveHasManyRelation($relation, $records);
      }
    }
  }
  
  private function _saveNewRecords($records) {
    foreach ($records as $record) {
      if ($record->isNewRecord) {
        if (!$record->save())
          // TODO: Instead of throwing an exception, we should abort the base record save operation with a validation error.
          throw new CDbException("Related record can't be saved (autoSave enabled)!");
      }
    }
  }
  
  private function _saveHasManyRelation($relation, $records) {
    // Triage
    $relatedPKs = array();
    $unrelatedPKs = array();
    $thisPK = $this->getPrimaryKey();
    foreach ($records as $record) {
      if ($record->{$relation->foreignKey} == $thisPK)
        $relatedPKs[] = $record->getPrimaryKey();
      else
        $unrelatedPKs[] = $record->getPrimaryKey();
    }
    
    // remove no more related records
    $criteria = new CDbCriteria();
    $criteria->addNotInCondition(CActiveRecord::model($relation->className)->tableSchema->primaryKey, $relatedPKs);
    $this->_clearRecords($relation, $criteria);
    
    // add not yet related records
    $criteria = new CDbCriteria();
    $criteria->addInCondition(CActiveRecord::model($relation->className)->tableSchema->primaryKey, $unrelatedPKs);
    if ($relation instanceof MortimerPolymorphicRelation)
      CActiveRecord::model($relation->className)->updateAll(array($relation->foreignKey => $this->getPrimaryKey(), $relation->typeColumn => $this->getStiBaseClass()), $criteria);
    else
      CActiveRecord::model($relation->className)->updateAll(array($relation->foreignKey => $this->getPrimaryKey()), $criteria);
  }
  
  private function _clearRecords($relation, $criteria) {
    if ($relation instanceof MortimerPolymorphicRelation)
      $criteria->addColumnCondition(array($relation->foreignKey => $this->getPrimaryKey(), $relation->typeColumn => $this->getStiBaseClass()));
    else
      $criteria->addColumnCondition(array($relation->foreignKey => $this->getPrimaryKey()));
    switch ($relation->dependant) {
      case 'remove':
        CActiveRecord::model($relation->className)->deleteAll($criteria);
        break;
        
      case 'delete':
        foreach (CActiveRecord::model($relation->className)->findAll($criteria) as $record) {
          $record->delete();
        }
        break;
        
      case 'nullify':
      default:
        if ($relation instanceof MortimerPolymorphicRelation)
          CActiveRecord::model($relation->className)->updateAll(array($relation->foreignKey => null, $relation->typeColumn => null), $criteria);
        else
          CActiveRecord::model($relation->className)->updateAll(array($relation->foreignKey => null), $criteria);
    }
  }

  //=============================================================================
  // Timestamps handling
  // Will fill created_at, created_on, updated_at, updated_on attributes if they exists
  
  private function _timestampsBeforeSave() {
    if ($this->isNewRecord) {
      if ($this->hasAttribute(self::$createdAtColumnName)) {
        $this->{self::$createdAtColumnName} = new CDbExpression('NOW()');
      }
      if ($this->hasAttribute(self::$createdOnColumnName)) {
        $this->{self::$createdOnColumnName} = new CDbExpression('NOW()');
      }
    }
    if ($this->hasAttribute(self::$updatedAtColumnName)) {
      $this->{self::$updatedAtColumnName} = new CDbExpression('NOW()');
    }
    if ($this->hasAttribute(self::$updatedOnColumnName)) {
      $this->{self::$updatedOnColumnName} = new CDbExpression('NOW()');
    }
  }
    
  //=============================================================================
  // STI: Single Table Inheritance
  
  // Handle STI type on load
  protected function instantiate($attributes) {
    if ($this->hasAttribute(self::$typeColumnName) && $attributes[self::$typeColumnName]) {
      $class=$attributes[self::$typeColumnName];
      $model=new $class(null);
      return $model;
    }
    else {
      return parent::instantiate($attributes);
    }
  }

  // Handle STI type on save
  private function _stiBeforeSave() {
    if ($this->hasAttribute(self::$typeColumnName) && $this->isNewRecord) {
      $this->{self::$typeColumnName} = get_class($this);
    }
  }

  // Returns only the records that are of the given subclasses branch
  function defaultScope() {
    $typeColumnName = self::$typeColumnName;
    if ($this->hasAttribute(self::$typeColumnName)) {
      return array(
        'condition'=>join(array_map(function($item) use($typeColumnName) { return "$typeColumnName='$item'"; }, $this->model()->_subclasses), ' OR '),
      );
    }
    else {
      return array();
    }
  }

  // Construct subclasses list only once
  public static function model($className=__CLASS__) {
    $instance = parent::model($className);
    if ($instance->hasAttribute(self::$typeColumnName) && !$instance->_subclasses) {
      // Get the subclasses and keep them in this static instance
      $instance->_subclasses = static::_getSelfAndSubclasses($className);
    }
    return $instance;
  }

  // Helper function
  private static function _getSelfAndSubclasses($parentClassName) {
    $classes = array($parentClassName);
    foreach (get_declared_classes() as $className) {
      if (is_subclass_of($className, $parentClassName))
        $classes[] = $className;
    }
    return $classes;
  }

  //=============================================================================
  // Polymorphic Associations support

  public function getActiveFinder($with) {
    if (is_string($with) && $this->getActiveRelation($with) instanceof MortimerBelongsToPolymorphicRelation)
      return new MortimerBelongsToPolymorphicActiveFinder($this,$with);
      
    if (is_string($with) && $this->getActiveRelation($with) instanceof MortimerHasManyPolymorphicRelation)
      return new MortimerHasManyPolymorphicActiveFinder($this,$with);
    
    return parent::getActiveFinder($with);
  }

}
