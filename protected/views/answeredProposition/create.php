<?php
/* @var $this AnsweredPropositionController */
/* @var $model AnsweredProposition */

$this->breadcrumbs=array(
	'Answered Propositions'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List AnsweredProposition', 'url'=>array('index')),
	array('label'=>'Manage AnsweredProposition', 'url'=>array('admin')),
);
?>

<h1>Create AnsweredProposition</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>