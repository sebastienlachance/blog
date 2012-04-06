---
layout: post
title: "Mastering Backbone - Day 1 impressions and basic concepts"
date: 2012-02-03 10:24
comments: true
categories: 
---

{% img /images/backbone.png backbone.js %}

## Basics

Previous experience:

I have no real hands-on experience. Only watched some screencasts.

I decided to create a little Todo app with Rails to make sure I understand the basics concepts correctly.

    gem 'rails-backbone'
    gem 'jasminerice'

    bundle install

    rails g backbone:install

In the spec/javascripts/spec.js.coffee, add the following:

    #= require jquery
    #= require underscore
    #= require backbone
    #= require backbone_rails_sync
    #= require backbone_datalink

## Creating a model

I created a todo.js file in the app/assets/javascript/backbone/models directory.

    window.Todo = Backbone.Model.extend({});


Pretty straightforward.

## Creating a collection 

    window.TodoList = Backbone.Collection.extend({
        model: Todo 
    });

## Testing to ensure everything is fine

To use **jasminerice**, start the rails server.

    rails s
    
Go to localhost:3000/jasmine.

{% gist 1751477 %}

## Creating a view

To define a view, you call the extend method on Backbone.View.

    window.TodoList = Backbone.View.extend({});

A view is used ot render a model so we need to override the **render** method.

    window.TodoList = Backbone.View.extend({
        render: function() {
          //the interesting part happens here.
        }
    });

The view is represented by an html element, I believe it's a div you don't specify it explicitely like this:

    window.TodoList = Backbone.View.extend({
        tagName: "section" //use a <section> tag
    });

And a test to make sure it behave like I want:

    it("should be a section tag", function() {
      var view = new TodoListView();
      expect(view.el.nodeName).toEqual("SECTION");
    });

**el** represent the current view element. 

In the render method, this is where you build the view markup, by appending one or more elements to the **el**.

    render: function() {
      $(el).html('<h2>Todos</h2>');
    }

    //test

    it("should render an h2 title', function() {
      var view = new TodoListView();
      view.render(); 
      expect(view.el.innerHTML).toEqual('<h2>Todos</h2>');
    }); 

But this is not really doing anything really exciting. I would like to display each todo in this view. We will need a view for individual Todo model.

    window.TodoView = Backbone.View.extend({
      tagName: 'li',
      render: function() {
      
      }
    });

But how do we get a model into this view?

When you create an instance of the view you can pass a the model you will want to display. It will automagically added to the model property on the view.

    describe("TodoView", function() {
      it("initialization accept a model", function() {
        var todo = new Todo();
        var view = new TodoView({ model: todo });
        expect(view.model).toEqual(todo);
      });
    });

Now I'm pretty sure I can render something in my TodoView render method.

    window.TodoView = Backbone.View.extend({ 
      tagName: 'li',
      render: function() {
        $(this.el).append(this.model.get('description'));
        return this;
      }
    });

Now in my TodoListView I will loop through each Todo, render a view for each and appending them to the root element.
  
    window.TodoListView = Backbone.View.extend({
      tagName: 'section',
      render: function() {
        $(this.el).html('<h2>Todos</h2><ul class="todo-items"></ul>');
        var listContainer = $(this.el).find('.todo-items'); 
        this.collection.each(function(todo) {
          var view = new TodoView({model:todo}); 
          listContainer.append(view.render().el);
        });
        return this;
      }
    });

Next post: Adding and removing todos.

