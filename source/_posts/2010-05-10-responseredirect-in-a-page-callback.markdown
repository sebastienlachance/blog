---
layout: post
title: "Response.Redirect in a page callback"
date: 2010-05-10 09:44:00
comments: true
categories: 
---

<p><strong>Response.Redirect cannot be called in a Page callback</strong></p>
<p>Sometime you may need to redirect the user somewhere else when doing a page callback. This is not possible with Response.Redirect but you can use Response.RedirectLocation,</p>
<p>
<div id="scid:DFDE9937-D816-47f4-A306-7B60D5CE5AC0:da17b2ef-4831-41ab-8f9b-3118cf273100" class="wlWriterEditableSmartContent" style="padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; display: inline; float: none; padding-top: 0px">
<pre class="brush: csharp; gutter: false; first-line: 1; tab-size: 4;  toolbar: true; ">Response.RedirectLocation = "notarealpage.aspx?i=1";</pre>
<!-- Code inserted with Steve Dunn's Windows Live Writer Code Formatter Plugin.  http://dunnhq.com --></div>
</p>
<p>&nbsp;</p>
<p>
<div id="scid:0767317B-992E-4b12-91E0-4F059A8CECA8:a48ff0a4-7277-47ab-9658-dd4284e4a3d0" class="wlWriterEditableSmartContent" style="padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; display: inline; float: none; padding-top: 0px">Technorati Tags: <a rel="tag" href="http://technorati.com/tags/asp.net">asp.net</a></div>
</p>