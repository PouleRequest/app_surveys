<?php
/* @var $this AnsweredPropositionsController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Answered Propositions',
);

$this->menu=array(
	array('label'=>'Create AnsweredPropositions', 'url'=>array('create')),
	array('label'=>'Manage AnsweredPropositions', 'url'=>array('admin')),
);
?>

<h1>Answered Propositions</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
