---
layout: post
title: "Ruby and nested classes"
date: 2012-04-24 07:45
comments: true
categories: ruby 
---

##What does it looks like?

    class Book
        class Page
        end
    end

##What is the purpose of nested classes?

It is useful when we want to group classes together instead of trying to keep them distinct. It make no sense in this example to have a standalone Page class without the Book class.

##How can we instantiate Page class?

If we try to instantiate it normally: 

    page = Page.new // will throw Uninitialized constant error

We get: Uninitialized constant Object::Page

Instead we need to use: 

    page = Book::Page.new

##But why using :: ? 

Using :: is a way to access constant. Does it make sense? Yes, because nested classes are stored in constant from within the class.

    class A
        B = "A constant"
    end

A::B will return "A constant"

