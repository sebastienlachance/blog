---
layout: post
title: "Getting started with Selenium IDE - Part 1"
date: 2007-07-10 15:23:00
comments: true
categories: 
---

<p>As promised, I will return back everything I have learned about <strong>Selenium</strong>. I invite you to go the <a href="http://openqa.org" target="_blank">OpenQA web site</a> for additional information.  If you stick with me for this series of article, you will get a great quick start to create good acceptances tests.  Selenium IDE (Integrated Development Environment) is a Firefox extension that records your actions on a page. Then you can execute them back with the IDE or with other version of Selenium (Selenium Remote Control is one of them).  First step  : <a href="http://www.mozilla.com/en-US/firefox/" target="_blank">Download Firefox</a> Second step: Install Selenium IDE extension on your browser</p>
<ul>
<li>Start Firefox and navigate to the<a href="http://openqa.org/selenium-ide/"> Selenium IDE home page. </a></li>
<li>Click the download link. This will install the IDE.</li>
</ul>
<p>(If , for some reason, the Selenium IDE can't replay your test, switch to a previous version.)</p>
<p>Third step : Record your first test</p>
<ul>
<li>In Firefox,  go to Tools\Selenium IDE.</li>
<li>Make sure the record button is pressed.</li>
<li>Navigate on  the web application.</li>
<li>Press the green arrow (start button).</li>
<li>Your first test is done.</li>
</ul>
<p>Now, maybe the replay has not worked and you got some errors. This will be covered in the next post when I will show you how to add others commands to your Selenium test.</p>
<p><img src="http://farm2.static.flickr.com/1195/777401494_76d85ef4f5.jpg?v=0" alt="" width="500" height="424" /></p>
<p>Here is some features found in the interface:</p>
<ul>
<li>There is the baseURL text field. Suppose you have two times the same web site, you want to have this attribute because you will avoid hard coding the path in the test. Simply specific another baseURL and the test will be performed on it.</li>
<li>Run/Walk/Step. This is basically the speed at witch the test will be executed. However, Step will require you to press the "Step" button to go line by line. Very useful.</li>
<li>Of course you can save the test, juste press Ctrl-S or go to File/Save Test.</li>
<li>Table/Source tabs. Basically, a test is just an html file (not entirely true, you will see later), composed of a table element, and 3 columns (each one has a specific purpose).</li>
<li>Play with Selenium Test Runner. This will launch a test runner for your test (will be covered later).</li>
</ul>
<p>A lot more is possible and this is only the beginning.  If you find missing information, just leave a comment, and I will update the post.  Selenium IDE Getting Started Series</p>
<ul>
<li><a href="http://sebastienlachance.com/post/Getting-started-with-Selenium-IDE-Part-2.aspx">Part  2 : Structure and commands</a></li>
</ul>