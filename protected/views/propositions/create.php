<?php
/* @var $this PropositionsController */
/* @var $model Propositions */

$this->breadcrumbs=array(
	'Propositions'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Propositions', 'url'=>array('index')),
	array('label'=>'Manage Propositions', 'url'=>array('admin')),
);
?>

<h1>Create Propositions</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>