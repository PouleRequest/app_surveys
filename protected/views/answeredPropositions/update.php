<?php
/* @var $this AnsweredPropositionsController */
/* @var $model AnsweredPropositions */

$this->breadcrumbs=array(
	'Answered Propositions'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List AnsweredPropositions', 'url'=>array('index')),
	array('label'=>'Create AnsweredPropositions', 'url'=>array('create')),
	array('label'=>'View AnsweredPropositions', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage AnsweredPropositions', 'url'=>array('admin')),
);
?>

<h1>Update AnsweredPropositions <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>