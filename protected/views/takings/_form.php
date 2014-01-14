<?php
/* @var $this TakingsController */
/* @var $model Takings */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'takings-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'survey_id'); ?>
		<?php echo $form->textField($model,'survey_id'); ?>
		<?php echo $form->error($model,'survey_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'anonymous'); ?>
		<?php echo $form->textField($model,'anonymous'); ?>
		<?php echo $form->error($model,'anonymous'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'state'); ?>
		<?php echo $form->textField($model,'state',array('size'=>31,'maxlength'=>31)); ?>
		<?php echo $form->error($model,'state'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'comment'); ?>
		<?php echo $form->textArea($model,'comment',array('rows'=>6, 'cols'=>50)); ?>
		<?php echo $form->error($model,'comment'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'starts_at'); ?>
		<?php echo $form->textField($model,'starts_at'); ?>
		<?php echo $form->error($model,'starts_at'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'ends_at'); ?>
		<?php echo $form->textField($model,'ends_at'); ?>
		<?php echo $form->error($model,'ends_at'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->