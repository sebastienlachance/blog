---
layout: post
title: "Converting a BlogEngine.Net blog to Octopress"
date: 2012-02-21 12:52
comments: true
categories: blogging, .net
---

Some months ago, I moved my BlogEngine.net blog (hosted on GoDaddy) to Octopress hosted on Heroku. I needed a tool to migrate all my posts and found nothing that could apply to my case (I'm pretty sure there is something out there, but I didn't look very far and wanted to code the tool myself anyway). 

Octopress blog post format look like this:

    ---
    layout: post
    title: "Setting ComVisible"
    date: 2005-01-19 14:46:00
    comments: true
    categories: 
    ---

    ** This is my post using Markdown **

My BlogEngine.Net was configured to use xml files to store posts. Which look like this:

    <?xml version="1.0" encoding="utf-8" standalone="yes"?>
    <post>
      <author>SebastienLachance</author>
      <title>Building a new app - Introduction</title>
      <description>The introduction</description>
      <content>This is ...

At first, I wanted to move each post individually whenever I could. After a week and pretty much nothing converted, I created a little .Net tool to make the conversion/migration much easier. 

It's a pretty basic windows form application that takes a path and output a bundle of simili-markdown (because the original posts are html, but, since markdown accept html, it's fine) files that are compatible with the Octopress format.

It's also generating a **redirection.rb** file that contains necessary code to be used by rack-rewrite to make necessary 301 redirection. It can be useful if you don't want to write it all manually.

    use Rack::Rewrite do

        r301 %r{^/post/The-surprising-science-of-motivation-by-Dan-Pink.aspx?$}, '/blog/the-surprising-science-of-motivation-by-dan-pink'
        r301 %r{^/post/Building-a-new-application-Introduction.aspx?$}, '/blog/building-a-new-application-introduction'
        r301 %r{^/post/tight-deadlines.aspx?$}, '/blog/tight-deadlines'
        r301 %r{^/post/no-such-file-to-load-cucumberrailsactive_record-(LoadError).aspx?$}, '/blog/no-such-file-to-load-cucumberrailsactive_record-(loaderror)'
        r301 %r{^/post/Buying-games-on-Steam.aspx?$}, '/blog/buying-games-on-steam'
        r301 %r{^/post/AlternativeToNet-review.aspx?$}, '/blog/alternativetonet-review'
        r301 %r{^/post/Excellent-post-by-Uncle-Bob.aspx?$}, '/blog/excellent-post-by-uncle-bob'


You can grab the source here : [BlogEngineToOctopres](https://github.com/sebastienlachance/BlogEngineToOctopress)

