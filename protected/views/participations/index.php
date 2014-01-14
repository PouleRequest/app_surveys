<?php
/* @var $this ParticipationsController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Participations',
);

$this->menu=array(
	array('label'=>'Create Participations', 'url'=>array('create')),
	array('label'=>'Manage Participations', 'url'=>array('admin')),
);
?>

<h1>Participations</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
