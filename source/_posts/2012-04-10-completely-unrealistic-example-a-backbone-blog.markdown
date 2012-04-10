---
layout: post
title: "Completely unrealistic example - A Backbone Blog"
date: 2012-04-10 06:00
comments: true
categories: backbone
published: true
---

Last week, while I was playing and coding on my Backbone blog project ([backbone-rails-blog](https://github.com/sebastienlachance/backbone-rails-blog)), I started wondering if it was something I could use to replace this blog, since I put so much time on it lately. But at the same time I kept telling myself, **is Google going to index the content?** The short answer is: **NO**, not now anyway.

The long answer goes like this: Facebook comments are indexed. So there should be a way to provide this content to GoogleBot. I have done my homework and this document, [Making Ajax Applications Crawlable](https://developers.google.com/webmasters/ajax-crawling/docs/getting-started)) provides some answers. Basically, we need the [hashbang](http://en.wikipedia.org/wiki/Shebang_(Unix)) url format. This is achieved with Backbone when we are not using pushstate. 

Hashbang url:

    http://sebastienlachance.com#!blog-post

My urls: 
  
    http://sebastienlachacne.com/blog-post
 

And frankly, I will not pursue this path. In my case anyway, it provides no real advantages to have an Ajax-powered blog.  

In fact, I could have left Backbone and only use it on the admin backend, but as a learning tool, I didn't want to revert back (and there is so much great blogging platform now anyway). 

Do you have any other web apps ideas (other than a todo list or blog)? In my next iteration (that is, the next app), I will be using Backbone with NodeJs and MongoDB. Sounds fun.
