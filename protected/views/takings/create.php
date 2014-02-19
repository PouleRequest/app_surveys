<?php
    echo CHtml::beginForm();
    	echo CHtml::label('Enquête anonyme ?', 'Taking[anonymous]'); // TODO : Touver une meilleure définition en Français
    	echo CHtml::radioButtonList('Taking[anonymous]', '0', ['0'=>'Non', '1'=>'Oui']);
        echo CHtml::label("Commentaire", 'Taking[comment]');
        echo CHtml::textField('Taking[comment]', '');
        echo CHtml::label('Date de début', 'Taking[starts_at]');
        echo CHtml::dateField('Taking[starts_at]','');
        echo CHtml::submitButton('Envoyer');
    echo CHtml::endForm();
?>