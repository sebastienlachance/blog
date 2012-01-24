---
layout: post
title: "no such file to load -- cucumber/rails/active_record (LoadError)"
date: 2011-06-14 17:06:00
comments: true
categories: 
---

<p>This morning I have updated cucumber on my rails application and I have been greeted by this error message :&nbsp;</p>
<pre>no such file to load -- cucumber/rails/active_record (LoadError)
</pre>
<p>A simple fix is to simply reinstall cucumber :</p>
<pre>rails generate cucumber:install
</pre>