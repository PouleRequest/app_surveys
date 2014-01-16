<?php
/* @var $this TakingsController */
/* @var $model Takings */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'id'); ?>
		<?php echo $form->textField($model,'id'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'survey_id'); ?>
		<?php echo $form->textField($model,'survey_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'anonymous'); ?>
		<?php echo $form->textField($model,'anonymous'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'state'); ?>
		<?php echo $form->textField($model,'state',array('size'=>31,'maxlength'=>31)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'comment'); ?>
		<?php echo $form->textArea($model,'comment',array('rows'=>6, 'cols'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'starts_at'); ?>
		<?php echo $form->textField($model,'starts_at'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'ends_at'); ?>
		<?php echo $form->textField($model,'ends_at'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->
