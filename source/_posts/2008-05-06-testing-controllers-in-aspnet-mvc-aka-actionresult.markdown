---
layout: post
title: "Testing controllers in ASP.NET MVC aka ActionResult"
date: 2008-05-06 12:09:00
comments: true
categories: 
---

<p>I haven't really done any testing in ASP.NET MVC until now. I started the development of a more serious application and decided to do it TDD. My first test was to make sure the Index action render the Index view. So as an informed developer, I started reading some blog posts to discover that in order to test a controller you need to mock a lot of things. I followed the screencast of Scott Hanselman and implemented his MvcMockHelper. It didn't worked. The ViewContext on the view engine remained null, resulting in an NullReferenceException. I downloaded the source of the last build to see for myself what was wrong. Surely I don't understand, because nowhere in the source they are setting the ViewContext on the ViewEngine. They just fill a RenderViewResult object and return it back.</p>
<p>This is how I figured out how we can now test controllers. With the new Interim build of the 04/16, we don't have to mock the HttpContext, HttpRequest and so on anymore. No need to do a fake view engine and no more mocking needed to test the RenderView method.</p>
<div>
<pre style="line-height: 12pt; background-color: #f4f4f4; margin: 0pt; width: 100%; font-family: consolas,'Courier New',courier,monospace; color: black; font-size: 8pt; overflow: visible; border-style: none; padding: 0pt;">[Test]<br /><span style="color: #0000ff;">public</span> <span style="color: #0000ff;">void</span> Index_Should_Set_The_Index_View()<br />{<br />    EntryController controller = <span style="color: #0000ff;">new</span> EntryController();<br />    var result = (RenderViewResult)controller.Index();<br /><br />    Assert.That(result.ViewName, Is.EqualTo(<span style="color: #006080;">"Index"</span>));<br />}</pre>
</div>
<p>So if you have any other operations (RedirectToAction and Redirect for example), it will return an object of type ActionResult that you can cast to the appropriate inheritor (RenderViewResult, ActionRedirectResult, HttpRedirectResult) to get a lot of information that you would have to retrieve manually with a mock.</p>
<p>I really like the simplicity of it and can't wait to see more improvement. This is an immense opportunity to learn a great deal of different things.</p>