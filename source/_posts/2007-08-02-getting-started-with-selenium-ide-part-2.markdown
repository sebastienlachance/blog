---
layout: post
title: "Getting started with Selenium IDE - Part 2"
date: 2007-08-02 15:25:00
comments: true
categories: 
---

<p>Here is the second part of the Getting Start with Selenium IDE series. This part mainly cover the start of the test. The next part will feature the fun part, testing everything! Enjoy!!!</p>
<p><strong><span style="text-decoration: underline;">Structure of an html test</span></strong> An html test is basically an html table. Each row is a command and each column has a specific purpose.</p>
<table style="width: 400px;" border="1" cellspacing="0" cellpadding="2">
<tbody>
<tr>
<td width="133" valign="top">Command</td>
<td width="133" valign="top">Target</td>
<td width="133" valign="top">Value</td>
</tr>
<tr>
<td width="133" valign="top">clickAndWait</td>
<td width="133" valign="top">link=Open</td>
<td width="133" valign="top">&nbsp;</td>
</tr>
<tr>
<td width="133" valign="top">type</td>
<td width="133" valign="top">txtUser</td>
<td width="133" valign="top">MyUsername</td>
</tr>
<tr>
<td width="133" valign="top">type</td>
<td width="133" valign="top">txtPassword</td>
<td width="133" valign="top">MyPassword</td>
</tr>
</tbody>
</table>
<p>The <strong>Command</strong> <strong>column</strong> contains the command to be executed. Nothing more.</p>
<p>The <strong>Target</strong> <strong>column</strong> is the element on the page on which the command will be executed, but sometime it can have an other purpose like the pause command.</p>
<p>And finally the <strong>Value column </strong>contains the value on which something will be tested. By example, you can have the assertNotText command and the value column will be the text that should not be there.</p>
<p><strong><span style="text-decoration: underline;">First command of the test</span></strong></p>
<p>With that being said, let's start with some concrete stuff. First of all, you will want to open your website. I recommend to use the Base URL text field, in case the root of your web site change. Enter your URL in the base URL text field. Then, add the first command of your test, which will be open, the target will be <em>/startpage.html</em> (replace startpage.html by your start page or leave it empty). Execute the test to verify that you are on the wanted page.</p>
<p><span style="text-decoration: underline;"><strong>Command explanation</strong></span></p>
<p>A command is a JavaScript function. Another way to see at the Target and Value column is that each one is a parameter of the function.  Use the reference tab in your Selenium IDE to see which parameters are needed.</p>
<p><a title="selenium-reference" href="http://www.flickr.com/photos/63483657@N00/997429466/"><img src="http://static.flickr.com/1428/997429466_0e81cd5773.jpg" border="0" alt="selenium-reference" /></a> <strong><span style="text-decoration: underline;"><br /></span></strong></p>
<p><strong><span style="text-decoration: underline;">Command <em>action</em> and <em>Action</em>AndWait</span></strong></p>
<p>There is various command available and much of the action have an equivalent with the AndWait suffix. The action without the AndWait suffix will be executed by the test runner and go directly to the next. However, there is scenario where a postback will occur after a command and the page will no longer be available for seconds. This is where you need to use the command ending with AndWait. Then the action will be executed and when the page has returned from the server the next command will be executed.  Selenium IDE Getting Started Series</p>
<ul>
<li><a href="http://sebastienlachance.com/post/Getting-started-with-Selenium-IDE-Part-1.aspx">Part 1 : Installation and first test</a></li>
</ul>
<p>Great resource</p>
<ul>
<li><a href="http://www.stevetrefethen.com/blog/AutomatedTestingOfASPNETWebApplicationsUsingSelenium.aspx">Automated Testing Of ASPNET Web Applications Using Selenium</a></li>
</ul>