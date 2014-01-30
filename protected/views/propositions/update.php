<?php
    
    echo CHtml::beginForm();
        echo CHtml::label('Titre de la proposition', 'Proposition[title]');
        echo CHtml::textField('Proposition[title]', $proposition->title);
        echo CHtml::submitButton('Envoyer');
    echo CHtml::endForm();
    
?>