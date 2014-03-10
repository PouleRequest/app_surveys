<?php

class SurveysController extends Controller
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
		$survey=new Survey;

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($survey);

		if(isset($_POST['Survey']))
		{
			$survey->attributes=$_POST['Survey'];
			if($survey->save())
				$this->redirect(array('view','id'=>$survey->id));
		}

		$this->render('create',array(
			'survey'=>$survey,
		));
	}

		public function actionIndex()
		{
			$dataProvider=new CActiveDataProvider('Survey');
			$this->render('index',array(
				'dataProvider'=>$dataProvider,
			));
		}

	/**
	 * Returns the data model based on the primary key given in the GET variable.
	 * If the data model is not found, an HTTP exception will be raised.
	 * @param integer $id the ID of the model to be loaded
	 * @return Survey the loaded model
	 * @throws CHttpException
	 */
	public function loadSurvey($id)
	{
		$survey=Survey::model()->findByPk($id);
		if($survey===null)
			throw new CHttpException(404,'The requested page does not exist.');
		return $survey;
	}
}
