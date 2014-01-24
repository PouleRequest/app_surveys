<?php
/* @var $this TakingController */
/* @var $model Taking */

$this->breadcrumbs=array(
	'Takings'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Taking', 'url'=>array('index')),
	array('label'=>'Manage Taking', 'url'=>array('admin')),
);
?>

<h1>Create Taking</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>