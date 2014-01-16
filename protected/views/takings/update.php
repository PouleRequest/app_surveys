<?php
/* @var $this TakingsController */
/* @var $model Takings */

$this->breadcrumbs=array(
	'Takings'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List Takings', 'url'=>array('index')),
	array('label'=>'Create Takings', 'url'=>array('create')),
	array('label'=>'View Takings', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage Takings', 'url'=>array('admin')),
);
?>

<h1>Update Takings <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>
