# MortimerActiveRecord

MortimerActiveRecord adds common extensions to CActiveRecord which are:

  - Single Table Inheritance (STI)
  - Polymorphic associations (for BELONGS_TO, HAS_ONE and HAS_MANY)
  - Object oriented associations (optionable):
    - associate records automatically on setter call.
    - automatic saving of new related records on parent save.
    - customizable scenario when removing records from relation.
  - Automatic timestamps if DB column *exists* (no need to worry adding a behaviour or not)

The goal is to make RoR user feel more at home.

Copyright 2013 Pascal Hurni <http://github.com/phurni>, licensed under the MIT license. Happy coding!


## Requirements

* Yii 1.1.6 or above


## How to install

1. Get the source in one of the following ways:
   * [Download](https://github.com/phurni/yii-mortimer_active_record) the latest version and place the files under
     `extensions/mortimer_active_record/` in your application root directory.
   * Add this repository as a git submodule to your repository by calling
     `git submodule add https://github.com/phurni/yii-mortimer_active_record.git extensions/mortimer_active_record`
   
2. Add import to your `config/main.php` like this:

        'import'=>array(
          'application.models.*',
          'application.components.*',
          'ext.mortimer_active_record.MortimerActiveRecord',
   
3. Inherit your model from `MortimerActiveRecord` instead of `CActiveRecord` and voilà!
   Note: It is not implemented as a Behaviour because some legacy methods in CActiveRecord have to be refined. This doesn't stops you to add
   any other Behaviour.


## Let the magic begin...

Let these ActiveRecord classes

~~~ php
<?php
class Post extends MortimerActiveRecord
{
    // ...
    public function relations()
    {
        return array(
            'author'   => array(self::BELONGS_TO,           'User',    'author_id'),
            'comments' => array(self::HAS_MANY_POLYMORPHIC, 'Comment', 'subject_id', 'typeColumn' => 'subject_type', 'dependant' => 'remove'),
        );
    }
}

class Product extends MortimerActiveRecord
{
    // ...
    public function relations()
    {
        return array(
            'manager'  => array(self::BELONGS_TO,           'Manager', 'manager_id'),
            'comments' => array(self::HAS_MANY_POLYMORPHIC, 'Comment', 'subject_id', 'typeColumn' => 'subject_type', 'dependant' => 'remove'),
        );
    }
}

class Comment extends MortimerActiveRecord
{
    // ...
    public function relations()
    {
        return array(
            'author'  => array(self::BELONGS_TO,             'User',            'author_id'),
            'subject' => array(self::BELONGS_TO_POLYMORPHIC, self::POLYMORPHIC, 'subject_id', 'typeColumn' => 'subject_type'),
        );
    }
}

class User extends MortimerActiveRecord
{
    // ...
    public function relations()
    {
        return array(
            'posts'  => array(self::HAS_MANY,             'Post',    'author_id', 'dependant' => 'delete'),
            'avatar' => array(self::HAS_ONE_POLYMORPHIC,  'Picture', 'subject_id', 'typeColumn' => 'subject_type', 'dependant' => 'delete'),
        );
    }
}

class Manager extends User
{
    // ...
    public function relations()
    {
        // BEWARE: We merge with the relation of our parent!
        return array_merge(parent::relations(), array(
            'products' => array(self::HAS_MANY, 'Product', 'manager_id'),
        ));
    }
}

class Picture extends MortimerActiveRecord
{
    // ...
    public function relations()
    {
        'subject' => array(self::BELONGS_TO_POLYMORPHIC, self::POLYMORPHIC, 'subject_id', 'typeColumn' => 'subject_type'),
    }
}
?>
~~~

Somewhere in our application code we can do:

~~~ php
<?php
    $user = new User();
    $user->posts = array(1,2,3);
    $user->save();
    // user is now author of posts 1,2,3

    // this is equivalent to the last example:
    $user = new User();
    $user->posts = Post::model()->findAllByPk(array(1,2,3));
    $user->save();
    // user is now author of posts 1,2,3

    $user->posts = array_merge($user->posts, array(4));
    $user->save();
    // user is now also author of post 4

    $user->posts = array();
    $user->save();
    // user is not related to any post anymore

    $post = Post::model()->findByPk(2);
    $post->author = User::model()->findByPk(1);
    $post->categories = array(2, Category::model()->findByPk(5));
    $post->save();
    // post 2 has now author 1 and belongs to categories 2 and 5

    // adding a profile to a user:
    $user->profile = new Profile();
    $user->profile->save(); // need this to ensure profile got a primary key
    $user->save();
?>
~~~

## Single Table Inheritance notes

You may define a class hierarchy of any depth, it's supported.

Let's have this hierarchy:

  * Vehicle
    * Terrestrial
      * Car
      * Truck
    * Aquatic
      * Kayak
      * Yacht


When finding records with a subclass, all records of any further subclasses are found regardless
of your inheritance depth.

So calling `Terrestrial::model()->findAll()` will find any `Terrestrial`, `Car` and `Truck` records.
This is acheived by using `CActiveRecord defaultScope()`, if you need to add your own defaultScope, do
it by merging the one of you parent, like this:

~~~ php
<?php
    class Truck {
      public function defaultScope() {
        return array_merge(parent::defaultScope(), array(
          // YOUR OWN SCOPES HERE
        ));
      }
    }
?>
~~~

Finding subclasses is done automatically by `MortimerActiveRecord` but it is only aware of already
loaded classes. You certainly want to preload STI subclasses to avoid missing records on find.
You can do that by explicitely loading all leaf classes (intermediate classes will be loaded as well),
add `StiPreloader.php` in the `components` directory with this content:

~~~ php
<?php
class StiPreloader extends CApplicationComponent
{
  public function init() {
    // Preload all leaf classes of STI models (intermediate classes will be loaded automatically)
    class_exists('Car');
    class_exists('Truck');
    class_exists('Kayak');
    class_exists('Yacht');
    
    return parent::init();
  }
}
?>
~~~

Then add it to the `preload` directive in your `config/main.php` :

    // preloading 'log' component
    'preload'=>array('log', 'sti_preloader'),
    ...
    // application components
    'components'=>array(
      ...
      'sti_preloader' => array(
        'class' => 'StiPreloader',
      ),


## Some things you should care about...

* For BELONGS_TO, working with id based and object based ways may not work as expected because one may
  overcome the other. For example, setting `$post->author_id` may have no effect because `$post->author`
  may be used to store the associated id. You may simply assign an id to `$post->author` it will work.
* This behavior will only work for relations that do not have additional conditions, joins, groups
  or the like defined since the expected result can't be easily determined.
* Reverse associations are not updated, if you assigned a record to a BELONGS_TO relation, for example
  `$post->author = $user;` then `$user->posts` will not be updated automatically.
