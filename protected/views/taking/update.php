<?php
/* @var $this TakingController */
/* @var $model Taking */

$this->breadcrumbs=array(
	'Takings'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List Taking', 'url'=>array('index')),
	array('label'=>'Create Taking', 'url'=>array('create')),
	array('label'=>'View Taking', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage Taking', 'url'=>array('admin')),
);
?>

<h1>Update Taking <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>