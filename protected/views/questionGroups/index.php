<?php
/* @var $this QuestionGroupsController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Question Groups',
);

$this->menu=array(
	array('label'=>'Create QuestionGroups', 'url'=>array('create')),
	array('label'=>'Manage QuestionGroups', 'url'=>array('admin')),
);
?>

<h1>Question Groups</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
