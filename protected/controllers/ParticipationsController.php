<?php

class ParticipationsController extends Controller
{
    
    /**
	 * @var string the default layout for the views. Defaults to '//layouts/column2', meaning
	 * using two-column layout. See 'protected/views/layouts/column2.php'.
	 */
	public $layout='//layouts/column2';
    
    protected $taking;
    
    public function filters()
    {
        return array(
            'GetTaking',
        );
    }
    
    /**
	 * Lists all models.
	 */
	public function actionIndex()
	{
        $participations = Participation::model()->forTaking($this->taking)->findAll();
		$this->render('index',array(
			'participations'=>$participations,
		));
	}
    
    /**
     * Load the question group specified in the URL
     */
    public function filterGetTaking($filterChain)
    {
        // Take the good questionGroup id from the survey/update page and verify it
        if (isset($_GET['tid'])) {
            if (!($this->taking = Taking::model()->findByPk($_GET['tid'])))
                throw new CHttpException(404, 'Error. There is no participant');
        }
        else
            throw new CHttpException(404, 'The taking ID is not specified.');
        
        $filterChain->run();
    }
 
}