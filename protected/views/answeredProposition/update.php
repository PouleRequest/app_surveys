<?php
/* @var $this AnsweredPropositionController */
/* @var $model AnsweredProposition */

$this->breadcrumbs=array(
	'Answered Propositions'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List AnsweredProposition', 'url'=>array('index')),
	array('label'=>'Create AnsweredProposition', 'url'=>array('create')),
	array('label'=>'View AnsweredProposition', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage AnsweredProposition', 'url'=>array('admin')),
);
?>

<h1>Update AnsweredProposition <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>