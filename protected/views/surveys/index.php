<?php
/* @var $this SurveysController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Surveys',
);

$this->menu=array(
	array('label'=>'Create Surveys', 'url'=>array('create')),
	array('label'=>'Manage Surveys', 'url'=>array('admin')),
);
?>

<h1>Surveys</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
