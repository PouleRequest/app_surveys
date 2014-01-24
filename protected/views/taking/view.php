<?php
/* @var $this TakingController */
/* @var $model Taking */

$this->breadcrumbs=array(
	'Takings'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'List Taking', 'url'=>array('index')),
	array('label'=>'Create Taking', 'url'=>array('create')),
	array('label'=>'Update Taking', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete Taking', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Taking', 'url'=>array('admin')),
);
?>

<h1>View Taking #<?php echo $model->id; ?></h1>

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
