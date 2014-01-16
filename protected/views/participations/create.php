<?php
/* @var $this ParticipationsController */
/* @var $model Participations */

$this->breadcrumbs=array(
	'Participations'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Participations', 'url'=>array('index')),
	array('label'=>'Manage Participations', 'url'=>array('admin')),
);
?>

<h1>Create Participations</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>
