---
layout: post
title: "An real world application with Backbone and Rails - My story ... so far"
date: 2012-05-24 9:20
comments: true
categories: startup, creatiom
published: true
---

This is a post about the technology stack I use for my new project (available in the next few weeks).

I can't tell you right now what it is... (I'm a little paranoid that my idea will be stolen :) ). But really soon I promise. 

## tl;dr

I used Rails, PostgreSql, Backbone and Twitter Bootstrap.

## This is how I decided of the technology stack.

## Web framework

Most of my real-world experience was with Rails and .NET. I have done a lot of work in ASP.NET, MVC, Winforms, services, etc. Since I have a lot more experience in the Microsoft world, it would have been logical to use ASP.NET MVC, but Rails is part of my life for the last 2-3 years and it's a lot more fun and the development process is reduced by a strong percentage. Don't believe me? Try it yourself, you'll see what I mean. I have nothing against Visual Studio, It's a fantastic IDE and it's becoming pretty fast. But, not fast enough. Waiting for Visual Studio to build and attach the debugger is too painful when you are in a hurry. NuGet is starting to be really great but ...  

So I will use Rails latests version (3.2.3 at the moment) with Vim, all on my Macbook Pro. RVM included. I strongly belived that when you launch a startup you want to launch something as fast as possible and adjust to the need of your users. I can't built every tools from scratch. So I will use existing tools instead of reinventing the wheel. Rails assets pipeline will help compress and manage assets easily, Sass and CoffeeScript support out of the box. You need something complicated that you don't have time for? Gems! There is Gems for almost everything.

I had considered and was almost sure that I would use Node. But I have realized that I couldn't be proefficient soon enough. 

## Database

For the database, I made the mistake to use MySql on my last project when I needed fulltext search. I will not use PostgreSQL. With Rails however, I didn't see any changes in my development process. Require the pg gem instead of MySql and it's done. NoSql is tempting but I don't see any real advantages for me, for now.

## Client-side styling

For the css grid framework I wanted to use Skeleton but decided at the last moment to use Twitter Bootstrap (I know...). You need to know that I am not a designer and Twitter Bootstrap has some customization possible. And it has all this Javascript plugins that are just great [Twitter Bootstrap](http://twitter.github.com/bootstrap/index.html)

## Backbone

An obvious choice was to use Backbone. I didn't knew why at the time, but I am glad I didn't threw this choice away. It was important for me to be a client-side application. As I previously read, Performance is a feature. And it is one of my key principle.

Backbone has a big learning curve. Here is how I manage to use it effectively: 

I wanted to use TDD to develop the client-side, but gave away after the first week. It was getting in my way and for me I didn't feel I was learning Backbone, I was learning how to test javascript. What I did instead was to only use the model part of Backbone and implement the rest using JQuery. It worked really well, until I finally saw a pattern emerging were I needed to reuse a certain part of the interface. So I created a view, listening to the change event of the model. After a while, I added another event listener to the blur event of an text input, and then listening to the reset event of a collection. And then another and another. I saw another case where a view could be appropriate and started implementing it. Created a sub view. Realized that a Router would be a welcome addition. And now I see where I could use it everywhere. 

I can now say that no more of the original JQuery code is left and everything is in either a view, model, router or collection. 

## Authentication

One of the other big challenge I faced was with authentication. It was a requirement to use a flexible authentication scheme. 

Twitter and Facebook were my two absolute must as well as the normal user/password combination. Thankfully, the Rails ecosystem has some great gems and OmniAuth was exactly what I was looking for. 
## A final note

I strongly believe in this project, not to generate a lot of revenue, but to help those in the same situation as WE were with our first baby... (ohoh a hint here).
