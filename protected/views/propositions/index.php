<?php
/* @var $this PropositionsController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Propositions',
);

$this->menu=array(
	array('label'=>'Create Propositions', 'url'=>array('create')),
	array('label'=>'Manage Propositions', 'url'=>array('admin')),
);
?>

<h1>Propositions</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
