---
layout: post
title: "Everyday Stuff : Rails and Partials"
date: 2011-09-07 12:56
comments: true
categories: 
---
Too often I don't remember how to render a partial and assign a model to it or a collection to it.

So this is a reminder for me.

Creating a partial
------------------

In the view directory create a _filename.html.erb (or haml if you use it).

Create it in the views directory that ressemble it the most or put it in the app/views/shared or anything else you want folder  if it will be used by another view outside the current view directory.

Rendering a partial
-------------------

    <%= render :partial => "entry" %>

This is the same name as the partial we created earlier but without the _.
If the partial is located elsewhere like in the shared folder, prefix the partial name with the folder name.

    <%= render :partial => "shared/entry" %>

### Giving data to a partial

    <%= render :partial => "entry", :locals => { :entry => @entry } %>

In this case @entry is a variable that is passed to the partial view which he can access it like this : 

    <%= entry.title %>

Another neat feature is that the partial already create a local variable that has the same name as the partial minus the _. You can assign a value directly to this variable like this : 

    <%= render :partial => "entry", :object => @entry %>



Or even better 

    <%= render @entry %>

It will look into the type of the instance and decide on the correct partial to use and assign the local variable directly

<% @entries.each do |entry| %>
     <%= render partial => 'entry', :locals => { :entry => entry } %>
<% end %>

Can now be written as : 

    <% @entries.each do |entry| %>
        <%= render entry %>
    <% end %

Eliminating the loop

<%= render partial => 'entry', :collection => @entries %>

Each partial will receive the local variable that is the singularize version of the collection name.

Even better again :

<%= render @entries %>     


spacer template??


