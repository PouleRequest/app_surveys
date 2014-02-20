<?php

class PropositionsController extends Controller
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
		$proposition=new Proposition;

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($proposition);

		if(isset($_POST['Proposition']))
		{
			$proposition->attributes=$_POST['Proposition'];

			$proposition->question_id = 102; //TODO: get that ID automatically. See the work on "questions" done by FireGhost
			
        	$proposition->position = $proposition->question->maxProposition+1;

			if($proposition->save())
				$this->redirect(array('view','id'=>$proposition->id));
		}

		$this->render('create',array(
			'model'=>$proposition,
		));
	}

	/**
	 * Returns the data model based on the primary key given in the GET variable.
	 * If the data model is not found, an HTTP exception will be raised.
	 * @param integer $id the ID of the model to be loaded
	 * @return Propositions the loaded model
	 * @throws CHttpException
	 */
	public function loadModel($id)
	{
		$proposition=Propositions::model()->findByPk($id);
		if($proposition===null)
			throw new CHttpException(404,'The requested page does not exist.');
		return $proposition;
	}
}
