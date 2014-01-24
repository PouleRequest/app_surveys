<?php
/* @var $this ParticipationController */
/* @var $model Participation */

$this->breadcrumbs=array(
	'Participations'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List Participation', 'url'=>array('index')),
	array('label'=>'Create Participation', 'url'=>array('create')),
	array('label'=>'View Participation', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage Participation', 'url'=>array('admin')),
);
?>

<h1>Update Participation <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>