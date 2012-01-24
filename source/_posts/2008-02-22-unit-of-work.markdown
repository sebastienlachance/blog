---
layout: post
title: "Unit Of Work"
date: 2008-02-22 10:47:00
comments: true
categories: 
---

<p>This is an interesting pattern. I was using it without giving it a name. I encountered this pattern while reading the <a class="v1" target="_new">Jimmy&nbsp;Nilsson</a>'s book : Applying Domain-Driven Design and Patterns - With Examples in C# and .NET. The Unit Of Work is a way to create a logical group of object. The most basic example I can think of is the example of an Order. An order contains OrderLines. The Order and the OrderLines are part of the same logical group. We say that this is an Unit Of Work. I tend to think of it at the way I'll save the Order. Do I call a service to insert the Order and another to save the OrderLines? Or do I call a single service that will persist it all at the same time (maybe using a transaction)? I will use a single service that will save the Order, the OrderLines and all other related information. Everything that must be persisted at the same time is said to be an Unit Of Work.</p>
<p>In the RecipeHelper project (the personnal project I am working on), I have a single Unit Or Work (at the moment). The Recipe is the root and contains a list of steps to follow and a list of ingredients. When I persist a recipe, I persist everything in the object graph.</p>
<p>Here is some resources from experts that can help you more with applying this pattern :</p>
<ul>
<li><a title="http://www.martinfowler.com/eaaCatalog/unitOfWork.html" href="http://www.martinfowler.com/eaaCatalog/unitOfWork.html">P of EAA: Unit of Work</a></li>
<li><a href="http://www.hibernate.org/42.html">NHibernate and Unit Of Work</a></li>
</ul>