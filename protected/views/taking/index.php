<?php
/* @var $this TakingController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Takings',
);

$this->menu=array(
	array('label'=>'Create Taking', 'url'=>array('create')),
	array('label'=>'Manage Taking', 'url'=>array('admin')),
);
?>

<h1>Takings</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
