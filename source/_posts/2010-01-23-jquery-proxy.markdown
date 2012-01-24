---
layout: post
title: "Understanding $.proxy on jQuery 1.4"
date: 2010-01-23 07:33:00
comments: true
categories: 
---

<p>One of my great resolution of the year is to learn by teaching. Today I watched the <a title="Day 9 of the 14 days of jQuery" href="http://jquery14.com/day-09" target="_blank">Day 9</a> videos of the <a title="14 days of jQuery" href="http://jquery14.com/" target="_blank">14 days of jQuery</a>. In one of them, Paul Irish talked about $.proxy() and I did not totally understood what was going on.</p>
<p>The <a title="jQuery proxy API definition" href="http://api.jquery.com/jQuery.proxy/" target="_blank">jQuery API definition</a> is :<em><strong> Takes a function and returns a new one that will always have a particular scope</strong></em>. Well, I could read this all day long and I am sure It couldn&rsquo;t be clearer without an example.</p>
<p>Here is the problem the &ldquo;proxy&rdquo; function is trying to solve.</p>
<div id="scid:DFDE9937-D816-47f4-A306-7B60D5CE5AC0:6bd2546f-1137-486f-bb42-2a8f002f6540" class="wlWriterEditableSmartContent" style="padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; display: inline; float: none; padding-top: 0px">
<pre class="brush: jscript; gutter: true; first-line: 1; tab-size: 4;  toolbar: true; "> var me = {
            name: "Sebastien",
            blogging: function () {alert(this.name + " is blogging") }
        };

$(function () {
    me.blogging(); //will display : Sebastien is blogging
    $('#clickMeButton').click(me.blogging); //will display : is blogging
});</pre>
<!-- Code inserted with Steve Dunn's Windows Live Writer Code Formatter Plugin.  http://dunnhq.com --></div>
<p>&nbsp;</p>
<p>As we can see, on line 7, the function is called inside <strong>me </strong>(now that I think of it, this instance name is not perfect). But when called as the button click handler, the <strong>this</strong> keyword is now representing the button. And as the name property is not set on the button, nothing is displayed. Easily provable with :</p>
<p>&nbsp;</p>
<div id="scid:DFDE9937-D816-47f4-A306-7B60D5CE5AC0:2e74f1a8-e570-42b5-a25e-60753e02d3ee" class="wlWriterEditableSmartContent" style="padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; display: inline; float: none; padding-top: 0px">
<pre class="brush: jscript; gutter: true; first-line: 1; tab-size: 4;  toolbar: false; ">$('#clickMeButton')[0].name = "Button"; 
$('#clickMeButton').click(me.blogging); //will display :Button is blogging</pre>
<!-- Code inserted with Steve Dunn's Windows Live Writer Code Formatter Plugin.  http://dunnhq.com --></div>
<p>&nbsp;</p>
<p>This could be awkward if not the desired behaviour. Let&rsquo;s see how the jQuery team resolved that problem.</p>
<div id="scid:DFDE9937-D816-47f4-A306-7B60D5CE5AC0:445e3eb5-35f0-47d6-b5ab-1706cbd8ffca" class="wlWriterEditableSmartContent" style="padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; display: inline; float: none; padding-top: 0px">
<pre class="brush: jscript; gutter: true; first-line: 1; tab-size: 4;  toolbar: true; ">$(function () {
	me.blogging(); //will display : Sebastien is blogging
	$('#clickMeButton').click($.proxy(me, "blogging")); //will display :Sebastien is blogging
});</pre>
<!-- Code inserted with Steve Dunn's Windows Live Writer Code Formatter Plugin.  http://dunnhq.com --></div>
<p>&nbsp;</p>
<p>By calling the proxy method with the instance and the desired function, the context is now set to that instance. Resolving that particular problem. The method takes the instance and the name of the function as a string or could also be called by using :</p>
<div id="scid:DFDE9937-D816-47f4-A306-7B60D5CE5AC0:b2112f19-ec3e-43f4-8883-1e608179ce72" class="wlWriterEditableSmartContent" style="padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; display: inline; float: none; padding-top: 0px">
<pre class="brush: jscript; gutter: true; first-line: 1; tab-size: 4;  toolbar: true; ">$('#clickMeButton').click($.proxy(me.blogging, me));</pre>
<!-- Code inserted with Steve Dunn's Windows Live Writer Code Formatter Plugin.  http://dunnhq.com --></div>
<p>I hope It helped you understand $.proxy(). I can already see where I can apply this knowledge right now.</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<div id="scid:0767317B-992E-4b12-91E0-4F059A8CECA8:3ee6135c-decf-4883-9846-eca2a406e737" class="wlWriterEditableSmartContent" style="padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; display: inline; float: none; padding-top: 0px">Technorati Tags: <a rel="tag" href="http://technorati.com/tags/jquery">jquery</a>,<a rel="tag" href="http://technorati.com/tags/javascript">javascript</a></div>