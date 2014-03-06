<?php

/**
 * Extends BelongsToRelation with some new options.
 *
 * Adds autoSave option
 *
 * @author    Pascal Hurni <http://github.com/phurni>
 * @copyright 2013 Pascal Hurni
 * @license   MIT
 */
class MortimerBelongsToRelation extends CBelongsToRelation
{
  /**
   * @var bool Whether new record associated to a BELONGS_TO relation should be saved
   *           automatically when the owner record is saved.
   *           Note that with the current implementation, a failed validation on the
   *           related record will raise an Exception.
   */
  public $autoSave;
  
  /**
   * @var bool Whether the record must be directly associated on setter call.
   *           Example when true:
   *              $post->author = 45;
   *              // user id 45 directly linked to $post
   *           Example when false:
   *              $post->author = 45;
   *              // user id 45 not yet linked to $post, but you can access its object through $post->author
   *              $post->save();
   *              // user id 45 is now linked to $post
   */
  public $autoApply;
}

/**
 * Add polymorphic associations support.
 *
 * @author    Pascal Hurni <http://github.com/phurni>
 * @copyright 2013 Pascal Hurni
 * @license   MIT
 */
class MortimerBelongsToPolymorphicRelation extends MortimerBelongsToRelation implements MortimerPolymorphicRelation
{
  /**
   * @var string DB column name to store the associated record type.
   *             Mandatory! There's no default.
   */
  public $typeColumn;
}

/*
 * MortimerBelongsToPolymorphicActiveFinder adds polymorphic associations support
 *
 */
class MortimerBelongsToPolymorphicActiveFinder extends CActiveFinder
{
  private $baseModel;
  private $with;
  
	public function __construct($model,$with)
	{
	  $this->baseModel = $model;
	  $this->with = $with;
	}

	public function lazyFind($baseRecord)
	{
	  $relation = $baseRecord->getActiveRelation($this->with);
	  if (!$baseRecord->{$relation->foreignKey}) return null;
	  
	  $model = $this->getModel($baseRecord->{$relation->typeColumn});
	  $baseRecord->{$relation->name} = $model->findByPk($baseRecord->{$relation->foreignKey});
	  // TODO: does fetched record already triggered events like afterFind() ?
	}
  
}
