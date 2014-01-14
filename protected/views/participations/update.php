<?php
/* @var $this ParticipationsController */
/* @var $model Participations */

$this->breadcrumbs=array(
	'Participations'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List Participations', 'url'=>array('index')),
	array('label'=>'Create Participations', 'url'=>array('create')),
	array('label'=>'View Participations', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage Participations', 'url'=>array('admin')),
);
?>

<h1>Update Participations <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>