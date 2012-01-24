---
layout: post
title: "Nightmare platform"
date: 2008-01-07 08:09:00
comments: true
categories: 
---

<p>Following the <a href="http://www.ayende.com/Blog/archive/2007/11/11/A-definition-of-a-nightmare-platform.aspx" target="_blank">definition of a nightmare platform</a>, I officially declare Microsoft Dynamics GP to be one of them. Sorry Dynamics GP guys, but I need an explanation for why I have spent half a day trying to figure out how this can be possible.</p>
<p>Consider this example :</p>
<p>&nbsp;</p>
<pre>salesItem.StandardCost = <span style="color: #2b91af;">new</span><span style="color: #000000;"> </span><span style="color: #a31515;">MoneyAmount</span><span style="color: #000000;">();<br />salesItem.StandardCost.Value = 1;<br /></span><span style="color: #000000;">salesItem.StandardCost.DecimalDigits = 2;<br /><br /></span><span style="color: #000000;">salesItem.UofMScheduleKey = </span><span style="color: #2b91af;">new</span><span style="color: #000000;"> </span><span style="color: #a31515;">UofMScheduleKey</span><span style="color: #000000;">();<br />salesItem.UofMScheduleKey.Id = </span><span style="color: #a31515;">"EACH"</span><span style="color: #000000;">;<br /></span><span style="color: #000000;"><br /></span><span style="color: #a31515;">Policy</span><span style="color: #000000;"> policy = DynamicsWebService.GetPolicyByOperation(</span><span style="color: #a31515;">"CreateSalesItem"</span><span style="color: #000000;">, DynamicsWebServiceContext);<br />DynamicsWebService.CreateSalesItem(salesItem, DynamicsWebServiceContext, policy);<p>&nbsp;</p></span></pre>
<p>And here is the error message :</p>
<blockquote>
<p>A validation exception has occurred.<br />Validation Errors:<br />- StandardCost cannot be less than 0.</p>
</blockquote>
<p>I'm still trying to figure out what amount should I put when the item has a cost...</p>