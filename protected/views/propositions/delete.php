<?php
    
    echo CHtml::beginForm();
        echo CHtml::label('Titre de la proposition', 'Proposition[title]');
        echo CHtml::submitButton('Supprimer');
    echo CHtml::endForm();
    
?>