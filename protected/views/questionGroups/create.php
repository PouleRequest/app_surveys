<?php
    echo CHtml::beginForm();
        echo CHtml::label('Titre du groupe de questions', 'QuestionGroup[title]');
        echo CHtml::textField('QuestionGroup[title]', '');
        echo CHtml::label('ID du survey (pas toucher!) - TODO', 'QuestionGroup[survey_id]'); //TODO: get the survey ID automatically.
        echo CHtml::textField('QuestionGroup[survey_id]', '7');
        echo CHtml::submitButton('Envoyer');
    echo CHtml::endForm();
?>