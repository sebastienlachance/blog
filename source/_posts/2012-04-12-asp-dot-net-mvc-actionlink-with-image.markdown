---
layout: post
title: "ASP.NET MVC ActionLink with image"
date: 2012-04-12 07:49
comments: true
categories: asp.net mvc
---

It's not as hard as it seems. This is a way to create a link with an image.

``` csharp link to action with an image
<a href="@Url.Action("Create", "LogBooks")">
  <img src="@Url.Content("~/Content/Images/create.png")" />
</a>
```
