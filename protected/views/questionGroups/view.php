<?php
/* @var $this QuestionGroupsController */
/* @var $model QuestionGroups */

$this->breadcrumbs=array(
	'Question Groups'=>array('index'),
	$model->title,
);

$this->menu=array(
	array('label'=>'List QuestionGroups', 'url'=>array('index')),
	array('label'=>'Create QuestionGroups', 'url'=>array('create')),
	array('label'=>'Update QuestionGroups', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete QuestionGroups', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage QuestionGroups', 'url'=>array('admin')),
);
?>

<h1>View QuestionGroups #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'survey_id',
		'title',
		'position',
	),
)); ?>
