---
layout: post
title: "My opinion about Duct Tape Programmer"
date: 2009-10-07 10:02:00
comments: true
categories: 
---

<p><a href="http://sebastienlachance.com/image.axd?picture=duct-tape_1.jpg"><img style="border-bottom: 0px; border-left: 0px; margin: 0px 20px 10px 0px; display: inline; border-top: 0px; border-right: 0px" title="duct-tape" src="http://sebastienlachance.com/image.axd?picture=duct-tape_thumb_1.jpg" border="0" alt="duct-tape" width="192" height="320" align="left" /></a> As everyone else, I have been following the discussion about the <a title="Duct Tape Programmer" href="http://www.joelonsoftware.com/items/2009/09/23.html" target="_blank">Duct Tape Programmer</a> post that Joel Spolsky has written. If you haven&rsquo;t read it yet, go read it and be objective.</p>
<p>&nbsp;</p>
<h3>Simple is better, less is better</h3>
<p>I agree with him, really! Not totally, but the essence of what I believe is written there. It&rsquo;s all about simplicity. I want my code to be simple. If I need to figure out what it&rsquo;s doing, I will refactor it until I can understand it easily. And I will never consider the use of a framework or another piece of technology if I really don&rsquo;t need it. Adding things for fun or for learning purpose can be fun, but it&rsquo;s not the most important aspect of software development.</p>
<p>I just want to stay away from complicated stuff. Simpler is better. Less is better. If there is a way to accomplish a task easily without a grandiose architecture, then I&rsquo;ll do it.</p>
<p>And don&rsquo;t forget that the ultimate goal is to ship it!</p>
<p>&nbsp;</p>
<h3>TDD</h3>
<p>But, I refuse to let TDD down. I don&rsquo;t know why everyone else is talking about Joel hatred concerning unit testing (am I to only one not reading his blog religiously?) but I need to put my feet here and give my opinion about TDD in this context. TDD allow me to write simple code. Just what is needed and nothing else. I don&rsquo;t think it slows me down. I don&rsquo;t think it gave me a lot more speed on my productivity, but it sure as hell helped me a lot in making things simple. But! Yes It could slow down dramatically a new team that has never done any sort of unit testing. Why not, you need to think a lot more of how you are going&nbsp; to do things and it&rsquo;s not easy to get out of the &ldquo;write and forget about until we test&rdquo; state of mind.</p>
<p>&nbsp;</p>
<h3>TDD and 100% code coverage</h3>
<p>One of the aspect of unit testing that can be a problem is the 100% code coverage mark. Most people are trying to test everything and will put a lot of effort in it. Why should it be important to cover every single line of code. Not everything should be tested. Automatic property in C# should not be tested. Use your judgement.</p>