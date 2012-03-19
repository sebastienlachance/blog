---
layout: post
title: "Backbone - Fetching a single model"
date: 2012-03-19 07:50
comments: true
categories: backbone
published: false
---

I'm working on a Backbone driven blog engine ([Backbone-rails-blog](https://github.com/sebastienlachance/backbone-rails-blog])) and had some serious issues with a single functionnality. Retrieving a blog post and displaying it. 

First, I'm still learning Backbone, so don't be so harsh on this basic problem.

To retrieve a single model, on your model, you define the url property like this

{% codeblock Post Model - post.js %}

url: function() {
    return "/posts/" + this.get('permalink');
}

{% endcodeblock %}
