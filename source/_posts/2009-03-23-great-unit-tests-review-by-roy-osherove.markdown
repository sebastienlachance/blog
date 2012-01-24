---
layout: post
title: "Great unit tests review by Roy Osherove"
date: 2009-03-23 13:15:00
comments: true
categories: 
---

<p>I watched the review of the unit tests of the ASP.NET MVC framework done by <a href="http://weblogs.asp.net/rosherove/default.aspx" target="_blank">Roy Osherove</a> and it was interesting. It’s great to have someone going through unit tests and explaining what they done right or wrong.</p> <p>Here is some points he made in the review:</p> <ul> <li>No dynamic values in assert. </li> <li>Empty string tests. </li> <li>Emphasis on readability. </li> <li>Multiple assert on one test is bad. </li> <li>Only one mock object per test. </li> <li>Verify only what you need to. </li> <li>Mocks that should be stubs. </li> </ul> <p>Watch it yourself <a href="http://weblogs.asp.net/rosherove/archive/2009/03/21/test-review-2-asp-net-mvc-unit-tests.aspx" target="_blank">on the Roy Osherove blog</a>.</p> <div class="wlWriterSmartContent" id="scid:0767317B-992E-4b12-91E0-4F059A8CECA8:9a048b0d-8718-41b5-8eca-716cc06f1ef9" style="display:inline;float:none;margin:0;padding:0;">Technorati Tags: <a href="http://technorati.com/tags/ASP.NET+MVC" rel="tag">ASP.NET MVC</a>,<a href="http://technorati.com/tags/Unit+Tests" rel="tag">Unit Tests</a>,<a href="http://technorati.com/tags/Roy+Osherove" rel="tag">Roy Osherove</a></div>