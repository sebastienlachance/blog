---
layout: post
title: "Why I’m doing unit testing"
date: 2009-09-23 09:52:00
comments: true
categories: 
---

<p>To be honest, I believe that we have reached a point where we can&rsquo;t allow ourselves to deliver untested software. I lived through a lot of maintenance work and debugging that were so time consuming that It took more time to debug than it took to actually develop. And it&rsquo;s for that reason that I believe that unit tests are essentials and should belong to every developer toolbox.</p>
<h3>Easy to get started</h3>
<p>It&rsquo;s actually not so hard to learn and a lot of resources already exists to get you started rapidly (<a title="Roy Osherove blog" href="http://weblogs.asp.net/ROsherove/" target="_blank">Roy Osherove</a> and <a title="Art of unit testing" href="http://www.artofunittesting.com/" target="_blank">his book</a> are a must).</p>
<h3>Unit test and design</h3>
<p>I also believe that unit tests have a strong positive impact to the design of the code. Doing correctly, TDD (test-driven-design or test-driven development) is a powerful tool. I&rsquo;m talking with experience here and it&rsquo;s very impressive. I worked on two almost identical project and one was driven by test and the other was not. The quality of the design was much much better on the project that was test driven than the other one. But what was way more impressive was the number of changes made to the structure of the project. Code with tests has evolved tremendously and untested code had a static structure that stayed the same over the course of it&rsquo;s development.</p>
<h3>Unit test as a learning tool</h3>
<p>And a great one it is. I recently had to create regular expression to find email in some large text file. Instead of rapidly hitting google for a rapid solution, I created a class library, added the nUnit framework and started writing tests. This way, I could test assumptions and learn some aspect of writing regular expressions. I learned a lot.</p>
<h3>I can&rsquo;t believe!</h3>
<p>Today, I can&rsquo;t believe myself when I see a method that contains logical code, and no tests. Tests are so easy to do (when you actually know how to do them) that it&rsquo;s almost a shame to forget about them.</p>
<h3>My answer</h3>
<p>And here is my answer to the &ldquo;we don&rsquo;t do test because our organization don&rsquo;t want to&rdquo; argument : Don&rsquo;t tell them. You are responsible for the quality of your code and it&rsquo;s very unprofessional to leave code go in production that you knew would have been much better and feel more confident if it was tested. I believe the advantages outweigh the disadvantages in this particular case.</p>
<p>This is my point of view.&nbsp;</p>