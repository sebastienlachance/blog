---
layout: post
title: "Setting expectations on properties with Rhino Mocks"
date: 2008-01-08 08:12:00
comments: true
categories: 
---

<p>For the getter, it's exactly as you would do with a method :</p>
<p>&nbsp;</p>
<pre><span style="color: #0000ff;">Expect</span><span style="color: #2b91af;">.Call(mockedConnection.CompanyConnectionString).Return(</span><span style="color: #00ff00;">"testconnectionstring"</span><span style="color: #2b91af;">);</span></pre>
<p>For the setter, only assign the value you want to the property of the mocked object :</p>
<p>&nbsp;</p>
<pre>mockedConnection.ConnectionString = <span style="color: #a31515;">"testconnectionstring"</span><span style="color: #000000;">;&lt;/PRE<p><br /><br />&nbsp;<br /></p></span></pre>