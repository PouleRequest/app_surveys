<?php
/* @var $this ParticipationController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Participations',
);

$this->menu=array(
	array('label'=>'Create Participation', 'url'=>array('create')),
	array('label'=>'Manage Participation', 'url'=>array('admin')),
);
?>

<h1>Participations</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
