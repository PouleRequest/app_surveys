<?php
/* @var $this TakingsController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Takings',
);

$this->menu=array(
	array('label'=>'Create Takings', 'url'=>array('create')),
	array('label'=>'Manage Takings', 'url'=>array('admin')),
);
?>

<h1>Takings</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
