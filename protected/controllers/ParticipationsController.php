<?php

class ParticipationsController extends Controller
{
    
    /**
	 * @var string the default layout for the views. Defaults to '//layouts/column2', meaning
	 * using two-column layout. See 'protected/views/layouts/column2.php'.
	 */
	public $layout='//layouts/column2';
    
    /**
	 * Lists all models.
	 */
	public function actionIndex()
	{
		$dataProvider=new CActiveDataProvider('Participation');
		$this->render('index',array(
			'dataProvider'=>$dataProvider,
		));
	}
 
}