<?php
/* @var $this PropositionsController */
/* @var $data Propositions */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id), array('view', 'id'=>$data->id)); ?>
	<br />
	<?php 
	echo CHtml::link("Update", array('update', 'id'=>$data->id));
	?>
	<br />
	<?php
	echo CHtml::link("Delete", array('delete', 'id'=>$data->id)); 
	?>
	<br /> 
	<?php
	echo CHtml::link("Create", array('create', 'id'=>$data->id)); 
	?>
    <br />
   
    <b><?php echo CHtml::encode($data->getAttributeLabel('title')); ?>:</b>
	<?php echo CHtml::encode($data->title); ?>
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

</div>