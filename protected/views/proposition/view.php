<?php
/* @var $this PropositionController */
/* @var $model Proposition */

$this->breadcrumbs=array(
	'Propositions'=>array('index'),
	$model->title,
);

$this->menu=array(
	array('label'=>'List Proposition', 'url'=>array('index')),
	array('label'=>'Create Proposition', 'url'=>array('create')),
	array('label'=>'Update Proposition', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete Proposition', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Proposition', 'url'=>array('admin')),
);
?>

<h1>View Proposition #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'type',
		'question_id',
		'position',
		'title',
		'answer_format',
		'trigger_action',
		'trigger_target_id',
		'trigger_target_type',
	),
)); ?>
