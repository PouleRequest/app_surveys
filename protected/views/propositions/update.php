<?php
/* @var $this PropositionsController */
/* @var $model Propositions */

$this->breadcrumbs=array(
	'Propositions'=>array('index'),
	$model->title=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List Propositions', 'url'=>array('index')),
	array('label'=>'Create Propositions', 'url'=>array('create')),
	array('label'=>'View Propositions', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage Propositions', 'url'=>array('admin')),
);
?>

<h1>Update Propositions <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>