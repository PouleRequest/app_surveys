<?php
/* @var $this PropositionController */
/* @var $model Proposition */

$this->breadcrumbs=array(
	'Propositions'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Proposition', 'url'=>array('index')),
	array('label'=>'Manage Proposition', 'url'=>array('admin')),
);
?>

<h1>Create Proposition</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>