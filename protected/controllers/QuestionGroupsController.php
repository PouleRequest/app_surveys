<?php

class QuestionGroupsController extends Controller
{
	/**
	 * @var string the default layout for the views. Defaults to '//layouts/column2', meaning
	 * using two-column layout. See 'protected/views/layouts/column2.php'.
	 */
	public $layout='//layouts/column2';

	/**
	 * Creates a new model.
	 * If creation is successful, the browser will be redirected to the 'view' page.
	 */
	public function actionCreate()
	{
		$questionGroup=new QuestionGroup;

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($questionGroup);

		if(isset($_POST['QuestionGroup']))
		{
			$questionGroup->attributes=$_POST['QuestionGroup'];

			if(!isset($questionGroup->position))
				$questionGroup->position = 0; //TODO: get the next available value

			if($questionGroup->save())
				$this->redirect(array('view','id'=>$questionGroup->id));
		}

		$this->render('create',array(
			'questionGroup'=>$questionGroup,
		));
	}

	/**
	 * Returns the data model based on the primary key given in the GET variable.
	 * If the data model is not found, an HTTP exception will be raised.
	 * @param integer $id the ID of the model to be loaded
	 * @return QuestionGroup the loaded model
	 * @throws CHttpException
	 */
	public function loadQuestionGroup($id)
	{
		$questionGroup=QuestionGroup::model()->findByPk($id);
		if($questionGroup===null)
			throw new CHttpException(404,'The requested page does not exist.');
		return $questionGroup;
	}
}
