<?php
    echo CHtml::beginForm();
        echo CHtml::label('Titre du groupe de questions', 'QuestionGroup[title]');
        echo CHtml::textField('QuestionGroup[title]', $questionGroup->title);
        echo CHtml::submitButton('Mettre à jour');
    echo CHtml::endForm();
?>
