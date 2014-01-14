<?php

/**
 * Extends HasManyRelation with some new options.
 *
 * Adds autoApply, autoSave and dependant options
 *
 * @author    Pascal Hurni <http://github.com/phurni>
 * @copyright 2013 Pascal Hurni
 * @license   MIT
 */
class MortimerHasManyRelation extends CHasManyRelation
{
  /**
   * @var bool Whether associated new records should be saved
   *           automatically when the owner record is saved.
   *           Note that with the current implementation, a failed validation on
   *           related records will raise an Exception.
   */
  public $autoSave;
  
  /**
   * @var bool Whether records must be directly associated on setter call.
   *           Example when true:
   *              $post->comments = array(3,4,5);
   *              // comments 3,4,5 are already linked to $post
   *           Example when false:
   *              $post->comments = array(3,4,5);
   *              // comments 3,4,5 are not yet linked to $post
   *              $post->save();
   *              // comments 3,4,5 are now linked to $post
   */
  public $autoApply;
  
  /**
   * @var string Way of handling records removal of associated records.
   *             May be one of:
   *                'nullify': The default, will set associated records foreign key to NULL.
   *                'remove':  Removes (DELETE) the associaged records directly from the DB.
   *                           No object callbacks are called.
   *                'delete':  Delete every associated record objects, BeforeDelete and AfterDelete
   *                           callbacks are called for every object.
   */
  public $dependant;
}

/**
 * Add polymorphic associations support.
 *
 * @author    Pascal Hurni <http://github.com/phurni>
 * @copyright 2013 Pascal Hurni
 * @license   MIT
 */
class MortimerHasManyPolymorphicRelation extends MortimerHasManyRelation implements MortimerPolymorphicRelation
{
  /**
   * @var string DB column name to store the associated record type.
   *             Mandatory! There's no default.
   */
  public $typeColumn;
  
	public function setBaseModel($baseModel) {
	  $this->on = "$this->typeColumn = '".$baseModel->getStiBaseClass()."'";
	}
}

/*
 * MortimerHasManyPolymorphicActiveFinder adds polymorphic associations support
 *
 */
class MortimerHasManyPolymorphicActiveFinder extends CActiveFinder
{
	// Customize to be able to inject the $model into the Relation object
	public function __construct($model,$with)
	{
		if(($relation=$model->getActiveRelation($with))===null)
			throw new CDbException(Yii::t('yii','Relation "{name}" is not defined in active record class "{class}".',
				array('{class}'=>get_class($model), '{name}'=>$with)));
		
	  // Inject baseModel into relation
	  $relation->baseModel = $model;
	  
	  parent::__construct($model,$with);
	}
}
