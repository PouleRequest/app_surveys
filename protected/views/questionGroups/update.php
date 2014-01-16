<?php
/* @var $this QuestionGroupsController */
/* @var $model QuestionGroups */

$this->breadcrumbs=array(
	'Question Groups'=>array('index'),
	$model->title=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List QuestionGroups', 'url'=>array('index')),
	array('label'=>'Create QuestionGroups', 'url'=>array('create')),
	array('label'=>'View QuestionGroups', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage QuestionGroups', 'url'=>array('admin')),
);
?>

<h1>Update QuestionGroups <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>
