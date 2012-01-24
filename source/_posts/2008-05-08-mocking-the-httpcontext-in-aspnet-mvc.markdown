---
layout: post
title: "Mocking the HttpContext in ASP.NET MVC"
date: 2008-05-08 12:12:00
comments: true
categories: 
---

<p>I just got a hard time figuring how I could be mocking the HttpContext so that I would be able to mock HttpRequest. But once you understand the principle, it is fairly easy.</p>
<p>First thing we need to know is that the HttpContext is held inside a <strong>ControllerContext</strong> object. Once we have instantiated one, we can then put it inside our controller.</p>
<div>
<pre style="border-style: none; margin: 0pt; padding: 0pt; overflow: visible; font-size: 8pt; width: 100%; color: black; line-height: 12pt; font-family: consolas,'Courier New',courier,monospace; background-color: #f4f4f4;">controller.ControllerContext = <span style="color: #0000ff;">new</span> ControllerContext(mockedhttpContext, <span style="color: #0000ff;">new</span> RouteData(), controller);</pre>
</div>
<div>&nbsp;</div>
<div>Where mockedHttpContext is your mocked <strong>HttpContextBase</strong> object.</div>
<div>&nbsp;</div>
<div>Inside the HttpContextBase object reside a lot of useful stuff that can replace with our mocks. By example, the HttpRequest, HttpServer, HttpApplication, etc, are all contained inside. So, getting familiar with this basic knowledge is a must to do testing usefully.</div>
<div>&nbsp;</div>
<div>Next post : Mocking HttpRequest.Form to return what we want.</div>