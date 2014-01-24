<?php
/* @var $this ParticipationController */
/* @var $model Participation */

$this->breadcrumbs=array(
	'Participations'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'List Participation', 'url'=>array('index')),
	array('label'=>'Create Participation', 'url'=>array('create')),
	array('label'=>'Update Participation', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete Participation', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Participation', 'url'=>array('admin')),
);
?>

<h1>View Participation #<?php echo $model->id; ?></h1>

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
