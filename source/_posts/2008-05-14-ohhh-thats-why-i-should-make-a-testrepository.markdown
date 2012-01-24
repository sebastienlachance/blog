---
layout: post
title: "Ohhh, that's why I should make a TestRepository..."
date: 2008-05-14 12:17:00
comments: true
categories: 
---

<p>Listening to the <a href="http://blog.wekeroad.com/mvc-storefront/mvcstore-part-10/">last screencast of Rob Conery (MVC Storefront)</a> made me realize something that I haven't really understood before.</p>
<p>Suppose you have the interface of a repository, let's say IEntryRepository. Then you have the actual SqlEntryRepository and TestEntryRepository. When I am doing TDD, I am testing the TestEntryRepository. But it will not be used in production. Why bothering with testing it then?</p>
<p>Because TDD is a design process. Even if I am testing my code, I am also designing it. The SqlEntryRepository will benefits from the actual design of the repository we use for testing.</p>
<p>&nbsp;</p>