<?php
    echo CHtml::beginForm();
        echo CHtml::label('Titre de la question', 'Question[title]');
        echo CHtml::textField('Question[title]', $question->title);
        echo CHtml::submitButton('Envoyer');
    echo CHtml::endForm();
?>
