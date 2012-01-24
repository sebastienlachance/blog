---
layout: post
title: "Resetting TeamCity Password"
date: 2009-08-12 12:24:00
comments: true
categories: 
---

<p>I&rsquo;m using TeamCity Version 4.5.3 (build 9035) and today I really couldn&rsquo;t remember my password. After searching for a while and trying various solutions, I have found this one working perfectly.</p>
<p><strong>Solution : </strong></p>
<p>Open a command prompt and go to &lt;installation folder&gt;\webapps\ROOT\WEB-INF\lib folder. Now type the following :</p>
<div id="scid:57F11A72-B0E5-49c7-9094-E3A15BD5B5E6:12750c8b-b266-435c-9f6b-a799905b3ac9" class="wlWriterEditableSmartContent" style="padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; display: inline; float: none; padding-top: 0px">
<pre style="background-color:#FFFFFF;white-space:-moz-pre-wrap; white-space: -pre-wrap; white-space: -o-pre-wrap; white-space: pre-wrap; word-wrap: break-word;overflow: auto;"><span style="color: #000000;">..\..\..\..\</span><span style="color: #000000;">jre</span><span style="color: #000000;">\</span><span style="color: #000000;">bin</span><span style="color: #000000;">\</span><span style="color: #000000;">java</span><span style="color: #000000;">.</span><span style="color: #000000;">exe -cp server</span><span style="color: #000000;">.</span><span style="color: #000000;">jar</span><span style="color: #000000;">;</span><span style="color: #000000;"> common-api</span><span style="color: #000000;">.</span><span style="color: #000000;">jar</span><span style="color: #000000;">;</span><span style="color: #000000;">commons-codec-</span><span style="color: #000000;">1.3</span><span style="color: #000000;">.</span><span style="color: #000000;">jar</span><span style="color: #000000;">;</span><span style="color: #000000;">util</span><span style="color: #000000;">.</span><span style="color: #000000;">jar</span><span style="color: #000000;">;</span><span style="color: #000000;">hsqldb</span><span style="color: #000000;">.</span><span style="color: #000000;">jar ChangePassword username newpassword

</span></pre>
<!-- Code inserted with Steve Dunn's Windows Live Writer Code Formatter Plugin.  http://dunnhq.com --></div>
<p>Notes : Change your Java.exe path accordingly. In this case I use the one located in the TeamCity folder.</p>