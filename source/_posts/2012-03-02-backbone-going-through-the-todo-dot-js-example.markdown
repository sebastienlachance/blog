---
layout: post
title: "Backbone - Going through the todo.js example"
date: 2012-03-02 08:52
comments: true
categories: 
published: false
---

Over the past days, I have been struggling a lot to understand Backbone and how to apply it in other situations than a todo list. 

I read and reread and even rewrite the Todo demo application for Backbone. But, If I wanted to redo it, I was lost. No idea where to go after models are created.

So here it is, I wanted to mimic the way I would recreate the way this application would have been created from scratch by a Backbone apprentice like me, one functionnality at a time.

The demo application is using a local storage mechanism, but I provide the way it would have been if it was a rails application.

rails new backbone_todo
rails g scaffold todo text:string done:boolean

Go to Backbone doc site, place backbone.js and underscore.js in app/assets/javascripts

Open application.js and make the following modifications

  //= require underscore
  //= require backbone
  //= require todo

Remove todo.js.coffee if you will not use CoffeeScript.

Open app/views/todos/index.html and put the following html:

  <div id="todoapp">

      <div class="title">
        <h1>Todos</h1>
      </div>

      <div class="content">

        <div id="create-todo">
          <input id="new-todo" placeholder="What needs to be done?" type="text" />
          <span class="ui-tooltip-top" style="display:none;">Press Enter to save this task</span>
        </div>

        <div id="todos">
          <ul id="todo-list"></ul>
        </div>

        <div id="todo-stats"></div>

      </div>

    </div>

    <ul id="instructions">
      <li>Double-click to edit a todo.</li>
      <li><a href="http://documentcloud.github.com/backbone/docs/todos.html">View the annotated source.</a></li>
    </ul>

    <div id="credits">
      Created by
      <br />
      <a href="http://jgn.me/">J&eacute;r&ocirc;me Gravel-Niquet</a>
    </div>

    <!-- Templates -->

    <script type="text/template" id="item-template">
      <div class="todo {{= done ? 'done' : '' }}">
        <div class="display">
          <input class="check" type="checkbox" {{= done ? 'checked="checked"' : '' }} />
          <div class="todo-text"></div>
          <span class="todo-destroy"></span>
        </div>
        <div class="edit">
          <input class="todo-input" type="text" value="" />
        </div>
      </div>
    </script>

    <script type="text/template" id="stats-template">
      {{ if (total) { }}
        <span class="todo-count">
          <span class="number">{{= remaining }}</span>
          <span class="word">{{= remaining == 1 ? 'item' : 'items' }}</span> left.
        </span>
      {{ } }}
      {{ if (done) { }}
        <span class="todo-clear">
          <a href="#">
            Clear <span class="number-done">{{= done }}</span>
            completed <span class="word-done">{{= done == 1 ? 'item' : 'items' }}</span>
          </a>
        </span>
      {{ } }}
    </script>



Now let's get to the core of backbone.

1. Create a todo

In document ready

  $(function() {
    
    //Needed if you use erb with rails
    _.templateSettings = {
      interpolate: /\{\{\=(.+?)\}\}/g,
      evaluate: /\{\{(.+?)\}\}/g
    };


    //code here
  });

Create a view that represent the application.

  window.AppView = Backbone.View.extend({});

Then we want to react when the user press enter after entering a todo.

  window.AppView = Backbone.View.extend({

    el: '#todoapp',
    
    events: function() {
      "keypress #new-todo" : "createOnEnter"
    },

    createOnEnter: function() {

    }

  });

What we have just done is to create a view that will listen to the keypress event on the element with the id new-todo, and call the function createOnEnter when pressing a key. 

The el property (element) will tell the view to which element in the DOM it is binded to. In that case, without the

Creating the elemnt

Add the following method that will be called when creating the view and setting the input property to the correct element.

In window.AppView:

initialize: function() {
  this.input = this.$('#new-todo);
}

And then we create the Todos (again in window.AppView)

  createOnEnter : function(e) {
    var text = this.input.val();
    if (!text || e.keyCode != 13) return;
    Todos.create({text: text});
    this.input.val();
  }

Running the code now and trying to enter an item will result in : Uncaught ReferenceError: Todos is not defined

It's because we are calling the create method on something that does not yet exists.

Todos is actually a collection of Todo model.

Let's define them both in the document ready function

  window.Todo = Backbone.Model.extend({});

There we have created the Todo model.

  window.TodoList = Backbone.Collection.extend({
    model: Todo
  });

  window.Todos = new TodoList();

And now we have create the collection that will hold the Todo models. We started by extending Backbone.Collection and provide Todo as the model of the collection.


Let's run the example again:  

Now we have : Uncaught Error: A "url" property or function must be specified 

Ahh, let's fix this easily.

  window.TodoList = Backbone.Collection.extend({
    model: Todo,
    url: '/todos'
  });

Now it would be great to display the added item in the list.

For this we need to react to the add, reset and all event

In window.AppView the initialize function change for: 

  initialize: function() {
    this.input = this.$('#new-todo');
    
    Todos.bind('add', this.addOne, this);
    Todos.bind('reset', this.addAll, this);
    Todos.bind('all', this.render, this);
  }

In details : 

Todos.bind : It is currently deprecated in favor of "on" to follow the jQuery direction but still supported for backward compatibility:

{% blockquote 
  onobject.on(event, callback, [context]) Alias: bind 
%}

The first argument is the event we want to listen, the second is the callback method to be called and the third optional parameters is the context.

We listen to three events: 

  1. add : Is called when a model is added to the collection
  2. reset : When the whole collection or more than one model is changed (like reloading the collection)
  3. all : Any event

Reacting to the add event on collection:

In window.AppView

  addOne: function(todo) {
    var view = new TodoView({model: todo});
    $('#todo-list').append(view.render().el);
  },
  
  addAll: function() {
    Todos.each(this.addOne);
  }  

So the addOne callback is going to create a TodoView and add it to #todo-list.

The TodoView: 

  window.TodoView = Backbone.View.extend({

    tagName: 'li',

    template: _.template($('#item-template').html()),

    render: function() {
      $(this.el).html(this.template(this.model.toJSON()));
      this.setText();
      return this;
    },

    setText: function() {
      var text = this.model.get('text');
      this.$('.todo-text').text(text);
      this.input = this.$('.todo-input');
      this.input.val(text);
    } 

  });

First, we extend Backbone.View to create a view. The tagName represent the top element that we will add the Todo content to. In this case it's a list element so we use an li tag. Second, the template. Remember in our html, we were having a &lt;script type="text/template"&gt; tag. This is actually a template that we will fill using underscore and our model converted to JSON.

And finally we have the render method, that will use the rendered template and add it to our li element. The model property is automatically assigned when creating the view. The setText method, add the todo text to the display element and the edit element, (more on this later);

Let's run it and see for ourselves how it's working so far.

ohoh:  Uncaught ReferenceError: done is not defined

We don't have any done property on our model. 

Open up the Todo model and add some defaults :

window.Todo = Backbone.Model.extend({
  defaults: function() {
    return {
      done: false
    }
  }
});

Everythings run fine now.

Let's handle the done checkbox.

Add an event to our TodoView to react on the click on checkbox.

  events: {
    "click .check": "toggleDone"
  },
  
  toggleDone: function() {
    this.model.toggle();
  },

  initialize: function() {
    this.model.bind('change', this.render, this);
  }


And in our Todo model: 

  toggle: function() {
    this.save({done: !this.get("done")});
  }

Since we have added code to react to the change event with the render callback, the view will be automatically be rerenderd with the new content. And the template show correctly the done item.

Run it. Warning. : With Rails, you will get Can't mass-assign protected attributes: id

One thing that would be great is to actually reload saved todo when we refresh the page.

Easy: 

In the initialize function of the AppView ask the Todo collection to fetch itself.

window.AppView = Backbone.View.extend({

  //code

  initialize: function() {
    //more code

    Todos.fetch();
  }

  //code

});


Deleting

Add an event to detect the delete button click.

In window.AppView

window.TodoView = Backbone.View.extend({

  //code

  events: {
    //code
    "click span.todo-destroy", "clear"
  },

  //code

  intialize: function() {
    
    //code
    
    this.model.bind('destroy', this.remove, this);
  },

  clear: function() {
    this.model.destroy();
  },

  remove: function() {
    $(this.el).remove();
  }


});

Editing

window.TodoView = Backbone.View.extend({

  //code

  events {
    //code    
    
    "dblclick div.todo-text" : "edit",
    "keypress .todo-input"   : "updateOnEnter"
  },

  //code

  edit: function() {
    $(this.el).addClass("editing");
    this.input.focus();
  },

  updateOnEnter: function(e) {
    if (e.keyCode == 13) this.close();
  },

  close: function() {
    this.model.save({text: this.input.val()});
    $(this.el).removeClass("editing");
  }

  
});

Adding the class editing, hides the div containing the todo text and show a div containing an text field with the content already been filled (via the template). 
