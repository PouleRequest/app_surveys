<?php
/* @var $this PropositionsController */
/* @var $model Propositions */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'propositions-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'type'); ?>
		<?php echo $form->textField($model,'type',array('size'=>60,'maxlength'=>63)); ?>
		<?php echo $form->error($model,'type'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'question_id'); ?>
		<?php echo $form->textField($model,'question_id'); ?>
		<?php echo $form->error($model,'question_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'position'); ?>
		<?php echo $form->textField($model,'position'); ?>
		<?php echo $form->error($model,'position'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'title'); ?>
		<?php echo $form->textField($model,'title',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'title'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'answer_format'); ?>
		<?php echo $form->textField($model,'answer_format',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'answer_format'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'trigger_action'); ?>
		<?php echo $form->textField($model,'trigger_action',array('size'=>60,'maxlength'=>63)); ?>
		<?php echo $form->error($model,'trigger_action'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'trigger_target_id'); ?>
		<?php echo $form->textField($model,'trigger_target_id'); ?>
		<?php echo $form->error($model,'trigger_target_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'trigger_target_type'); ?>
		<?php echo $form->textField($model,'trigger_target_type',array('size'=>60,'maxlength'=>63)); ?>
		<?php echo $form->error($model,'trigger_target_type'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->
