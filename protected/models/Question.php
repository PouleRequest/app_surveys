<?php

/**
 * This is the model class for table "questions".
 *
 * The followings are the available columns in table 'questions':
 * @property integer $id
 * @property string $type
 * @property integer $question_group_id
 * @property string $title
 * @property integer $position
 * @property string $settings
 *
 * The followings are the available model relations:
 * @property Answers[] $answers
 * @property Propositions[] $propositions
 * @property QuestionGroups $questionGroup
 */
class Question extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'questions';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('question_group_id, position', 'required'),
			array('question_group_id, position', 'numerical', 'integerOnly'=>true),
			array('type', 'length', 'max'=>63),
			array('title', 'length', 'max'=>255),
			array('settings', 'length', 'max'=>1023),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, type, question_group_id, title, position, settings', 'safe', 'on'=>'search'),
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
			'answers' => array(self::HAS_MANY, 'Answer', 'question_id'),
			'propositions' => array(self::HAS_MANY, 'Proposition', 'question_id'),
			'questionGroup' => array(self::BELONGS_TO, 'QuestionGroup', 'question_group_id'),
			'survey' => array(self::HAS_ONE, 'Survey', array('survey_id'=>'id'), 'through'=>'questionGroup')
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'type' => 'Type',
			'question_group_id' => 'Question Group',
			'title' => 'Title',
			'position' => 'Position',
			'settings' => 'Settings',
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
		$criteria->compare('type',$this->type,true);
		$criteria->compare('question_group_id',$this->question_group_id);
		$criteria->compare('title',$this->title,true);
		$criteria->compare('position',$this->position);
		$criteria->compare('settings',$this->settings,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Question the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
    
    /**
     * Before deleting a question, we must verify that his survey has no taking.
     * And, I we can delete it, we have to delete his propositions first
     */
     public function beforeDelete() 
     {
         // TODO: Verify this with P. Hurni
         if ($this->survey->takings != null) {
             
            // FIXME: Show an error message here
            echo "This survey has already a taking. You cannot delete a question from this survey.";
            return false;
            
         }
         else {
             
             $propositions = $this->propositions;
             $nbrPropositions = count($propositions);
             
             for ($i = 0; $i < $nbrPropositions; $i++) {
                // TODO: FOR DEBUG
                //$propositions[$i]->delete();
                echo "deleting proposition id ". $propositions[$i]->id ." !<br />";
             }
             
             // TODO: FOR DEBUG
             return false;
         }
     }
}
