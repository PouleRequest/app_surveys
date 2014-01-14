<?php
/* @var $this ParticipationsController */
/* @var $model Participations */

$this->breadcrumbs=array(
	'Participations'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'List Participations', 'url'=>array('index')),
	array('label'=>'Create Participations', 'url'=>array('create')),
	array('label'=>'Update Participations', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete Participations', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Participations', 'url'=>array('admin')),
);
?>

<h1>View Participations #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'type',
		'taking_id',
		'person_id',
		'participant_token',
	),
)); ?>
