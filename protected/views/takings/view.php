<?php
/* @var $this TakingsController */
/* @var $model Takings */

$this->breadcrumbs=array(
	'Takings'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'List Takings', 'url'=>array('index')),
	array('label'=>'Create Takings', 'url'=>array('create')),
	array('label'=>'Update Takings', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete Takings', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Takings', 'url'=>array('admin')),
);
?>

<h1>View Takings #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'survey_id',
		'anonymous',
		'state',
		'comment',
		'starts_at',
		'ends_at',
	),
)); ?>
