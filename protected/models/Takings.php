<?php

/**
 * This is the model class for table "takings".
 *
 * The followings are the available columns in table 'takings':
 * @property integer $id
 * @property integer $survey_id
 * @property integer $anonymous
 * @property string $state
 * @property string $comment
 * @property string $starts_at
 * @property string $ends_at
 */
class Takings extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'takings';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('survey_id', 'required'),
			array('survey_id, anonymous', 'numerical', 'integerOnly'=>true),
			array('state', 'length', 'max'=>31),
			array('comment, starts_at, ends_at', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, survey_id, anonymous, state, comment, starts_at, ends_at', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'survey_id' => 'Survey',
			'anonymous' => 'Anonymous',
			'state' => 'State',
			'comment' => 'Comment',
			'starts_at' => 'Starts At',
			'ends_at' => 'Ends At',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 *
	 * Typical usecase:
	 * - Initialize the model fields with values from filter form.
	 * - Execute this method to get CActiveDataProvider instance which will filter
	 * models according to data in model fields.
	 * - Pass data provider to CGridView, CListView or any similar widget.
	 *
	 * @return CActiveDataProvider the data provider that can return the models
	 * based on the search/filter conditions.
	 */
	public function search()
	{
		// @todo Please modify the following code to remove attributes that should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('id',$this->id);
		$criteria->compare('survey_id',$this->survey_id);
		$criteria->compare('anonymous',$this->anonymous);
		$criteria->compare('state',$this->state,true);
		$criteria->compare('comment',$this->comment,true);
		$criteria->compare('starts_at',$this->starts_at,true);
		$criteria->compare('ends_at',$this->ends_at,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Takings the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
