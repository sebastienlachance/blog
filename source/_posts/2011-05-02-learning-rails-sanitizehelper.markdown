---
layout: post
title: "Learning Rails : SanitizeHelper"
date: 2011-05-02 05:36:00
comments: true
categories: 
---

<h2>SanitizeHelper&nbsp;</h2>
<p>I need to start somewhere and while it may not be the most informative post ever, I'll try to cover this feature as much as I can. Everything here is already described in the Rails Api so it should be a great idea to keep it as a reference. I'll also try to add what I have learned&nbsp;</p>
<p>There are 4 methods in the sanitize helper.</p>
<h3>strip_tags</h3>
<p>Remove any html tags from your the input provided. If you truncate, you may see &lt;a. strip_tags before you truncate.</p>
<h3>strip_links</h3>
<p>Remove any links from your markup and return only the text of the link</p>