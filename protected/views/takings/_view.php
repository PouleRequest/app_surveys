<?php
/* @var $this TakingsController */
/* @var $data Takings */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id), array('view', 'id'=>$data->id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('survey_id')); ?>:</b>
	<?php echo CHtml::encode($data->survey_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('anonymous')); ?>:</b>
	<?php echo CHtml::encode($data->anonymous); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('state')); ?>:</b>
	<?php echo CHtml::encode($data->state); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('comment')); ?>:</b>
	<?php echo CHtml::encode($data->comment); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('starts_at')); ?>:</b>
	<?php echo CHtml::encode($data->starts_at); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('ends_at')); ?>:</b>
	<?php echo CHtml::encode($data->ends_at); ?>
	<br />


</div>