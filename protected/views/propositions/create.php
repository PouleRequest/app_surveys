<?php
    echo CHtml::beginForm();
        echo CHtml::label('Titre de la proposition', 'Proposition[title]');
        echo CHtml::textField('Proposition[title]', '');
        echo CHtml::label('Type de proposition', '');
        echo CHtml::radioButtonList('Proposition[type]', 'OpenedProposition', ['OpenedProposition'=>'Ouverte', 'ClosedProposition'=>'Fermée']);
        echo CHtml::submitButton('Envoyer');
    echo CHtml::endForm();
?>