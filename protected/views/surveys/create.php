<?php
    echo CHtml::beginForm();
        echo CHtml::label('Titre du sondage', 'Survey[title]');
        echo CHtml::textField('Survey[title]', '');
        echo CHtml::label('Description du sondage', 'Survey[description]');
        echo CHtml::textField('Survey[description]', '');
        echo CHtml::submitButton('Envoyer');
    echo CHtml::endForm();
?>