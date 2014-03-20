<?php
/* @var $this QuestionGroupController */
/* @var $data QuestionGroup */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id), array('view', 'id'=>$data->id)); ?>
	<!-- TODO: Verif -->
	<br />
	<?php 
	echo CHtml::link("Update", array('update', 'id'=>$data->id));
	?>
	<br />
	<?php
	echo CHtml::link("Delete", array('delete', 'id'=>$data->id)); 
	?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('survey_id')); ?>:</b>
	<?php echo CHtml::encode($data->survey_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('title')); ?>:</b>
	<?php echo CHtml::encode($data->title); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('position')); ?>:</b>
	<?php echo CHtml::encode($data->position); ?>
	<br />


</div>