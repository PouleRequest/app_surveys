<?php
/* @var $this QuestionGroupController */
/* @var $model QuestionGroup */

$this->breadcrumbs=array(
	'Question Groups'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List QuestionGroup', 'url'=>array('index')),
	array('label'=>'Manage QuestionGroup', 'url'=>array('admin')),
);
?>

<h1>Create QuestionGroup</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>