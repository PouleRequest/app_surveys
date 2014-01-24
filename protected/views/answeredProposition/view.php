<?php
/* @var $this AnsweredPropositionController */
/* @var $model AnsweredProposition */

$this->breadcrumbs=array(
	'Answered Propositions'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'List AnsweredProposition', 'url'=>array('index')),
	array('label'=>'Create AnsweredProposition', 'url'=>array('create')),
	array('label'=>'Update AnsweredProposition', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete AnsweredProposition', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage AnsweredProposition', 'url'=>array('admin')),
);
?>

<h1>View AnsweredProposition #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'answer_id',
		'proposition_id',
		'body',
		'position',
	),
)); ?>
