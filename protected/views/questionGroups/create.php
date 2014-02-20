<?php
    echo CHtml::beginForm();
        echo CHtml::label('Titre du groupe de questions', 'QuestionGroup[title]');
        echo CHtml::textField('QuestionGroup[title]', '');
        echo CHtml::submitButton('Envoyer');
    echo CHtml::endForm();
?>