<?php
/* @var $this AnsweredPropositionsController */
/* @var $model AnsweredPropositions */

$this->breadcrumbs=array(
	'Answered Propositions'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List AnsweredPropositions', 'url'=>array('index')),
	array('label'=>'Manage AnsweredPropositions', 'url'=>array('admin')),
);
?>

<h1>Create AnsweredPropositions</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>
