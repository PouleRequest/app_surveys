<?php
    
    echo CHtml::beginForm();
        echo CHtml::label('Titre de la proposition', 'Proposition[title]');
        echo CHtml::textField('Proposition[title]', $proposition->title);
        echo '<br/>';
        echo CHtml::label('Position de la proposition', 'Proposition[position]');
        echo CHtml::textField('Proposition[position]', $proposition->position);
        echo '<br/>';
        echo CHtml::submitButton('Mettre à jour');
    echo CHtml::endForm();
    
?>