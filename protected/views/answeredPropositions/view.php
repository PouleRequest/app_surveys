<?php
/* @var $this AnsweredPropositionsController */
/* @var $model AnsweredPropositions */

$this->breadcrumbs=array(
	'Answered Propositions'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'List AnsweredPropositions', 'url'=>array('index')),
	array('label'=>'Create AnsweredPropositions', 'url'=>array('create')),
	array('label'=>'Update AnsweredPropositions', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete AnsweredPropositions', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage AnsweredPropositions', 'url'=>array('admin')),
);
?>

<h1>View AnsweredPropositions #<?php echo $model->id; ?></h1>

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
