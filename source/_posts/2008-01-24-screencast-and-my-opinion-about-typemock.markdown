---
layout: post
title: "Screencast and my opinion about TypeMock"
date: 2008-01-24 10:45:00
comments: true
categories: 
---

<p>I have always been told that TypeMock was too powerful, not strongly typed and for that, It shouldn't be used. I believed that. The problem is : I should have given it a try before taking that for granted.</p>
<p>I have watched the <a href="http://weblogs.asp.net/rosherove/archive/2008/01/21/video-typemock-basics-lesson-1-dependency-breaking-101.aspx" target="_blank">Roy Osherove screencast</a> and was impressed! I am currently working on an existing code base that was done before we went Agile and even before we were doing object-oriented development. When I need to refactor certain features I usually start writing tests and then using dependency injection to be able to mock some object. The minimum to be testable with Rhino Mocks. But with TypeMock you can mock object and don't even need to inject them. You can also make expectation on static methods. Isn't that just great! I believe so.</p>
<p>However, I will stick with Rhino Mocks for now. I like the way It force me to decouple my code and in some sense, it provide me with guidance to make my work testable.</p>
<p>P.S. : This is just my opinion and not the absolute truth.</p>