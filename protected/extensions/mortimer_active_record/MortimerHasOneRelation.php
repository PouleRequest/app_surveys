<?php

/**
 * Extends HasOneRelation with some new options.
 *
 * Adds autoApply, autoSave and dependant options
 *
 * @author    Pascal Hurni <http://github.com/phurni>
 * @copyright 2013 Pascal Hurni
 * @license   MIT
 */
class MortimerHasOneRelation extends CHasOneRelation
{
  /**
   * @var bool Whether an associated new record should be saved
   *           automatically when the owner record is saved.
   *           Note that with the current implementation, a failed validation on the
   *           related record will raise an Exception.
   */
  public $autoSave;
  
  /**
   * @var bool Whether the record must be directly associated on setter call.
   *           Example when true:
   *              $user->profile = 123;
   *              // profile id 123 directly linked to $user (sets the foreignKey on the profile record!)
   *           Example when false:
   *              $user->profile = 123;
   *              // profile 123 not yet linked to $user, but you can access its object through $user->profile
   *              $user->save();
   *              // profile 123 is now linked to $user
   */
  public $autoApply;
  
  /**
   * @var string Way of handling record removal of associated record.
   *             May be one of:
   *                'nullify': The default, will set associated record foreign key to NULL.
   *                'remove':  Removes (DELETE) the associated record directly from the DB.
   *                           No object callbacks are called.
   *                'delete':  Delete the associated record object, BeforeDelete and AfterDelete
   *                           callbacks are called for the object.
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
class MortimerHasOnePolymorphicRelation extends MortimerHasOneRelation implements MortimerPolymorphicRelation
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
 * MortimerHasOnePolymorphicActiveFinder adds polymorphic associations support
 *
 */
class MortimerHasOnePolymorphicActiveFinder extends CActiveFinder
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
