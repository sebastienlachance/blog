---
layout: post
title: "Ajax, Wcf and deserialization problem"
date: 2010-05-10 09:36:00
comments: true
categories: 
---

<p><strong>{"ExceptionDetail":{"HelpLink":null,"InnerException":null,"Message":"The token '\"' was expected but found '''.","StackTrace":" at</strong></p>
<p>I was getting this error when doing an Ajax call to a WCF service with jQuery.</p>
<p>There could be many reasons for this, but one possible fix is to use double quote instead of single quote. So changing :</p>
<div id="scid:DFDE9937-D816-47f4-A306-7B60D5CE5AC0:5c639bc1-bdb1-47c7-af57-bd3496c27954" class="wlWriterEditableSmartContent" style="padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; display: inline; float: none; padding-top: 0px">
<pre class="brush: jscript; gutter: false; first-line: 1; tab-size: 4;  toolbar: true; ">data: "{'Id': '12'}"</pre>
<!-- Code inserted with Steve Dunn's Windows Live Writer Code Formatter Plugin.  http://dunnhq.com --></div>
<p>&nbsp;</p>
<p>to</p>
<div id="scid:DFDE9937-D816-47f4-A306-7B60D5CE5AC0:f69063d0-fe8e-4b3f-93bf-06105913373e" class="wlWriterEditableSmartContent" style="padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; display: inline; float: none; padding-top: 0px">
<pre class="brush: jscript; gutter: false; first-line: 1; tab-size: 4;  toolbar: true; ">data: '{"Id": "12"}'</pre>
<!-- Code inserted with Steve Dunn's Windows Live Writer Code Formatter Plugin.  http://dunnhq.com --></div>
<p>will most likely resolve your problem.</p>
<div id="scid:0767317B-992E-4b12-91E0-4F059A8CECA8:f04d88f2-a34c-4f8f-b6c0-fcf669f2d8a1" class="wlWriterEditableSmartContent" style="padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; display: inline; float: none; padding-top: 0px">Technorati Tags: <a rel="tag" href="http://technorati.com/tags/jquery">jquery</a>,<a rel="tag" href="http://technorati.com/tags/ajax">ajax</a>,<a rel="tag" href="http://technorati.com/tags/wcf">wcf</a></div>