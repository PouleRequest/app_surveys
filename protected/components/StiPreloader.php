<?php
class StiPreloader extends CApplicationComponent
{
  public function init() {
    // Preload all leaf classes of STI models (intermediate classes will be loaded automatically)
    class_exists('UniqueChoiceQuestion');
    class_exists('MultipleChoiceQuestion');
    class_exists('RangeQuestion');
    class_exists('RankingQuestion');
    
    return parent::init();
  }
}
?>