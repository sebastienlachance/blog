---
layout: post
title: "Running a WCF Service in IIS 7"
date: 2009-08-24 09:00:00
comments: true
categories: 
---

<p><strong>The page you are requesting cannot be served because of the extension configuration. If the page is a script, add a handler.</strong></p>
<p>Out of the box, you cannot run a WCF Service (.svc) in IIS7. Fortunately the solution is easy.</p>
<p>Open a command prompt and type :</p>
<div id="scid:57F11A72-B0E5-49c7-9094-E3A15BD5B5E6:0f15fb6b-6565-49ea-a750-b20d7ac4c199" class="wlWriterEditableSmartContent" style="padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; display: inline; float: none; padding-top: 0px">
<pre style="background-color:#FFFFFF;white-space:-moz-pre-wrap; white-space: -pre-wrap; white-space: -o-pre-wrap; white-space: pre-wrap; word-wrap: break-word;overflow: auto;"><span style="color: #000000;">"</span><span style="color: #000000;">%windir%\Microsoft.NET\Framework\v3.0\Windows Communication Foundation\ServiceModelReg.exe</span><span style="color: #000000;">"</span><span style="color: #000000;"> -r -y</span></pre>
<!-- Code inserted with Steve Dunn's Windows Live Writer Code Formatter Plugin.  http://dunnhq.com --></div>
<p>&nbsp;</p>