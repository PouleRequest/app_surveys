<?php
/* @var $this AnsweredPropositionController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Answered Propositions',
);

$this->menu=array(
	array('label'=>'Create AnsweredProposition', 'url'=>array('create')),
	array('label'=>'Manage AnsweredProposition', 'url'=>array('admin')),
);
?>

<h1>Answered Propositions</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
