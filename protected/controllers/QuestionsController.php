<?php

class QuestionsController extends Controller
{
    /**
     * @var string the default layout for the views. Defaults to '//layouts/column2', meaning
     * using two-column layout. See 'protected/views/layouts/column2.php'.
     */
    public $layout='//layouts/column2';
    
    
    /**
     * Create a new question.
     * If creation is successful, the browser will be redirected to the survey editing page
     */
    public function actionCreate()
    {
        $question = new Question;
        
        if (isset($_POST['Question'])) {
            $question->attributes=$_POST['Question'];
            if ($question->save())
                $this->redirect(array('survey/update', 'id'=>$question->survey->id));
        }
        
        $this->render('create', array(
            'question'=>$question,
        ));
    }
    
    
    /**
     * Updates a question.
     * If update is successful, the browser will be redirected to the survey's update page
     * @param integer $id the ID of the question to be updated
     */
    public function actionUpdate($id)
    {
        $question=$this->loadQuestion($id);

        // Uncomment the following line if AJAX validation is needed
        // $this->performAjaxValidation($question);

        if(isset($_POST['Question']))
        {
            $question->attributes=$_POST['Question'];
            if($question->save())
                $this->redirect(array('surveys/update','id'=>$question->survey->id));
        }

        $this->render('update',array(
            'question'=>$question,
        ));
    }
    
    
    /**
     * Delete a question
     * If successful, redirect to the survey editing page
     * @param int $id the ID of the question to be deleted
     */
     public function actionDelete($id)
     {
         $question = $this->loadQuestion($id);
         $surveyID = $question->survey->id;
         $question->delete();
         
         $this->redirect(array('surveys/update', 'id'=>$surveyID));
     }


    /**
     * Returns the data model based on the primary key given in the GET variable.
     * If the data model is not found, an HTTP exception will be raised.
     * @param integer $id the ID of the model to be loaded
     * @return Question the loaded model
     * @throws CHttpException
     */
    public function loadQuestion($id)
    {
        $question=Question::model()->findByPk($id);
        if($question===null)
            throw new CHttpException(404,'The requested page does not exist.');
        return $question;
    }

}
