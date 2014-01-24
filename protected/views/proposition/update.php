<?php
/* @var $this PropositionController */
/* @var $model Proposition */

$this->breadcrumbs=array(
	'Propositions'=>array('index'),
	$model->title=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List Proposition', 'url'=>array('index')),
	array('label'=>'Create Proposition', 'url'=>array('create')),
	array('label'=>'View Proposition', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage Proposition', 'url'=>array('admin')),
);
?>

<h1>Update Proposition <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>