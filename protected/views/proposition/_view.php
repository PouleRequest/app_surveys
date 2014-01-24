<?php
/* @var $this PropositionController */
/* @var $data Proposition */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id), array('view', 'id'=>$data->id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('type')); ?>:</b>
	<?php echo CHtml::encode($data->type); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('question_id')); ?>:</b>
	<?php echo CHtml::encode($data->question_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('position')); ?>:</b>
	<?php echo CHtml::encode($data->position); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('title')); ?>:</b>
	<?php echo CHtml::encode($data->title); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('answer_format')); ?>:</b>
	<?php echo CHtml::encode($data->answer_format); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('trigger_action')); ?>:</b>
	<?php echo CHtml::encode($data->trigger_action); ?>
	<br />

	<?php /*
	<b><?php echo CHtml::encode($data->getAttributeLabel('trigger_target_id')); ?>:</b>
	<?php echo CHtml::encode($data->trigger_target_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('trigger_target_type')); ?>:</b>
	<?php echo CHtml::encode($data->trigger_target_type); ?>
	<br />

	*/ ?>

</div>