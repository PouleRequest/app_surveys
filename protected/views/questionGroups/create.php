<?php
/* @var $this QuestionGroupsController */
/* @var $model QuestionGroups */

$this->breadcrumbs=array(
	'Question Groups'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List QuestionGroups', 'url'=>array('index')),
	array('label'=>'Manage QuestionGroups', 'url'=>array('admin')),
);
?>

<h1>Create QuestionGroups</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>