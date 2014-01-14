<?php
/* @var $this TakingsController */
/* @var $model Takings */

$this->breadcrumbs=array(
	'Takings'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Takings', 'url'=>array('index')),
	array('label'=>'Manage Takings', 'url'=>array('admin')),
);
?>

<h1>Create Takings</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>