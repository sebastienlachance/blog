---
layout: post
title: "Easier check if an item is in the list of items on a ListControl"
date: 2006-10-12 05:50:00
comments: true
categories: 
---

<p>Every time I set the SelectedValue of a DropdownList in ASP.NET, I was checking if the value existed in the control and if it doesn't, I usually set a default one (creating a new item with a SelectedIndex of -1). I realized that if you set the FormattingEnabled to true, the SelectedIndex will be set to -1. Thus removing the need for the this check.</p>
<p>This property is found on the ListControl class, with the Dropdownlist inherit.</p>
<p>Happy coding !</p>