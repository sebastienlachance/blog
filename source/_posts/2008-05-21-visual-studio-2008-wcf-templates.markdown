---
layout: post
title: "Visual Studio 2008 - WCF Templates"
date: 2008-05-21 12:19:00
comments: true
categories: 
---

<p>When you want to create a new WCF project, you are presented with 4 different templates to use :</p>
<ul>
<li>Sequential Workflow Service Library </li>
<li>Syndication Service Library </li>
<li>State Machine Workflow Service Library </li>
<li>WCF Service Library</li>
</ul>
<p>Each one has it's own particularities. It's important to know which one to choose but you should know that the template only generate things you need to get started. You can always start from an empty WCF Service Library and build on top of it. Anyway, here is an explanation for each one.</p>
<h3>Sequential Workflow Service Library</h3>
<p>You basically create a sequential workflow project that made operations available by WCF. I have no experience with Workflow Foundation so I will not go further into details.</p>
<h3>Syndication Service Library</h3>
<p>This template is great. It present you a way to expose an RSS or Atom feed via a WCF Service contract. This is built-in stuff already present in the framework.</p>
<p>To expose a feed, you need an operation that return a&nbsp; <strong>SyndicationFeedFormatter</strong> (in the System.ServiceModel.Syndication namespace). Then create a <strong>SyndicationFeed</strong> and add <strong>SyndicationItem</strong> to it. Finally, create a <strong>Atom10FeedFormatter</strong> or <strong>Rss20FeedFormatter</strong> and return it.</p>
<div>
<pre style="border-style: none; margin: 0pt; padding: 0pt; overflow: visible; font-size: 8pt; width: 100%; color: black; line-height: 12pt; font-family: consolas,'Courier New',courier,monospace; background-color: #f4f4f4;">SyndicationFeed feed = <span style="color: #0000ff;">new</span> SyndicationFeed(<span style="color: #006080;">"Feed Title"</span>, <span style="color: #006080;">"A WCF Syndication Feed"</span>, <span style="color: #0000ff;">null</span>);<br />List&lt;SyndicationItem&gt; items = <span style="color: #0000ff;">new</span> List&lt;SyndicationItem&gt;();<br /><br /><span style="color: #008000;">// Create a new Syndication Item.</span><br />SyndicationItem item = <span style="color: #0000ff;">new</span> SyndicationItem(<span style="color: #006080;">"An item"</span>, <span style="color: #006080;">"Item content"</span>, <span style="color: #0000ff;">null</span>);<br />items.Add(item);<br />feed.Items = items;<br /><br /><span style="color: #008000;">// Return ATOM or RSS based on query string</span><br /><span style="color: #008000;">// rss -&gt; http://localhost:8731/Design_Time_Addresses/SyndicationServiceLibrary1/Feed1/</span><br /><span style="color: #008000;">// atom -&gt; http://localhost:8731/Design_Time_Addresses/SyndicationServiceLibrary1/Feed1/?format=atom</span><br /><span style="color: #0000ff;">string</span> query = WebOperationContext.Current.IncomingRequest.UriTemplateMatch.QueryParameters[<span style="color: #006080;">"format"</span>];<br />SyndicationFeedFormatter formatter = <span style="color: #0000ff;">null</span>;<br /><span style="color: #0000ff;">if</span> (query == <span style="color: #006080;">"atom"</span>)<br />{<br />   formatter = <span style="color: #0000ff;">new</span> Atom10FeedFormatter(feed);<br />}<br /><span style="color: #0000ff;">else</span><br />{<br />   formatter = <span style="color: #0000ff;">new</span> Rss20FeedFormatter(feed);<br />}<br /><br /><span style="color: #0000ff;">return</span> formatter;</pre>
</div>
<h2>&nbsp;</h2>
<h3>State Machine Workflow Service Library</h3>
<p>Another template that expose a Windows Workflow as a Service. This time the type of Workflow is a State Machine. A state machine workflow contrary to a sequential workflow is driven by external events. Transition between states are based on certain events until it reach the final state.</p>
<p>&nbsp;</p>
<h3>WCF Service Library</h3>
<p>The most basic project to create a WCF service. You can use it to do everything you want with the most control.</p>
<div id="scid:0767317B-992E-4b12-91E0-4F059A8CECA8:30a47706-c5e7-4cb1-ac8e-cb066919747b" class="wlWriterSmartContent" style="display: inline; margin: 0; padding: 0;">Technorati Tags: <a rel="tag" href="http://technorati.com/tags/WCF">WCF</a></div>