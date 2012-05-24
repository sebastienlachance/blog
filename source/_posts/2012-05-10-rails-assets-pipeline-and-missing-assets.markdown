---
layout: post
title: "Rails Assets Pipeline and missing assets"
date: 2012-05-10 10:00
comments: true
categories: rails assets-pipeline
---

I moved the entire [Guide des Commerces](http://www.guidedescommercesdebeauce.com) from Rails 3.0.10 to Rails 3.2.3. I have to admit it, I was afraid of the assets pipeline and my first deployment attempt resulted in a lost afternoon and a bad case of stress. I had to revert back and lose some customer data (just my associate data). 

The problem was that I tried to use the assets pipeline for half the application and let everything in the public folder for the second half (admin part). I'm pretty sure it is possible. 

Now everything is moved and I am actually quite happy. One css and one js per page is finally a dream came true.

Anyway, what I really wanted to talk here is about one of the problems I had. When calling the assets precompile rake task, one compiled css file was missing. Like one of the manifest wasn't read or executed.

When you have multiple manifest files (not called application.css or application.js), you actually have to tell which additionnal one to precompile.

``` ruby config/application.rb
config.assets.precompile += ['administration.js', 'administration.css' ]
```

##One gotcha with scss manifest:

**If you are using scss files as manifests**, you need to use the compiled version.

Like this:

``` ruby config/application.rb
config.assets.precompile += ['application.css' ] # this will work for application.css.scss 
```

Instead of:

``` ruby config/application.rb
 config.assets.precompile += ['application.css.scss' ]  # this will not work, but no error will be thrown
```
 



