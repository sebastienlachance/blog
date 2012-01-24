---
layout: post
title: "NDepend - Small review"
date: 2009-08-10 13:07:00
comments: true
categories: 
---

<p>I have been using <a href="http://www.ndepend.com/">NDepend</a> on various project I am working on and there is so much to say that I can&rsquo;t wait to do a full review because I will make you wait too long. I got a free license and wanted you to know what the tool can do and what were my impression.</p>
<p>First of all NDepend is a tool that analyse your code. It&rsquo;s huge! Definitely not a tool you can learn in an hour or two. Simply give the tool a solution or project file and start analyzing. You are first presented with a a complete map of your application. By default it shows all your code sorted by the number of lines but you can quickly switch by different kinds of metrics (LOC, Cyclomatic Complexity, IL instructions, Efferent coupling, etc.).</p>
<p><a title="ndependcomplete" href="http://www.flickr.com/photos/63483657@N00/3724199730/"><img src="http://static.flickr.com/3439/3724199730_0127dffd0b.jpg" border="0" alt="ndependcomplete" width="680" height="516" /></a></p>
<p>The best part is that you can write query against your code. This feature is called CQL (custom query language). Need to know which method have more than 200 lines of code? No problem. Really. It looks like SQL and is easy to write (I haven&rsquo;t written any yet, but I&rsquo;m sure it will prove useful later).</p>
<p>Take a look at this :</p>
<div id="scid:57F11A72-B0E5-49c7-9094-E3A15BD5B5E6:42d5c7d5-dae6-4381-bb88-43e02dd5509e" class="wlWriterSmartContent" style="display:inline;float:none;margin:0;padding:0;">
<pre style="background-color:White;white-space:-moz-pre-wrap; white-space: -pre-wrap; white-space: -o-pre-wrap; white-space: pre-wrap; word-wrap: break-word;overflow: auto;"><span style="color: #008000;">//</span><span style="color: #008000;"> &lt;Name&gt;Methods with too many local variables (NbVariables)&lt;/Name&gt;</span><span style="color: #008000;">
</span><span style="color: #000000;">WARN IF Count </span><span style="color: #000000;">&gt;</span><span style="color: #000000;"> </span><span style="color: #800080;">0</span><span style="color: #000000;"> IN SELECT TOP </span><span style="color: #800080;">10</span><span style="color: #000000;"> METHODS WHERE NbVariables </span><span style="color: #000000;">&gt;</span><span style="color: #000000;"> </span><span style="color: #800080;">15</span><span style="color: #000000;"> ORDER BY NbVariables DESC</span></pre>
<!-- Code inserted with Steve Dunn's Windows Live Writer Code Formatter Plugin.  http://dunnhq.com --></div>
<p>Out of the box, NDepend provide around 200 CQL queries. It has queries to find unused or dead code, find which method are not test covered, naming convention not respected, types with too many methods, ect. Each rules has a short description on what it does and even provide links to more complete documentation if needed. It also has intellisence as if this wasn&rsquo;t enough.</p>
<p>A cool feature is the dependency matrix. It&rsquo;s easy to see where is your dependencies.</p>
<p><a title="ndependmatrix" href="http://www.flickr.com/photos/63483657@N00/3723410225/"><img src="http://static.flickr.com/3420/3723410225_31dfb32f18.jpg" border="0" alt="ndependmatrix" /></a></p>
<p>The tools itself is beautiful, it make us want to play more with it (it does not use WPF, but it appears to).</p>
<p>A lot of features that I haven&rsquo;t used yet are :</p>
<ul>
<li>Compare assemblies</li>
<li>Code Coverage</li>
<li>Writing complex&nbsp; custom rules</li>
</ul>
<p>I recently came across this post entry by <a href="http://codebetter.com/blogs/patricksmacchia/">Patrick Smacchia</a> (creator of NDepend) that used the tools to spot bugs in an existing code base (<a href="http://codebetter.com/blogs/patricksmacchia/archive/2009/06/21/agile-behavior-nurture-knowledge-database.aspx">http://codebetter.com/blogs/patricksmacchia/archive/2009/06/21/agile-behavior-nurture-knowledge-database.aspx</a>). I don&rsquo;t know why but this has really struck me and kept it in my favourites. I could write custom query to spot bad practices and potential bugs.</p>
<p>But there is a downside. On a project I worked last year. Every query that has been executed had a warning on it, almost every single one. That&rsquo;s sad. I almost cried. But I&rsquo;m fine now. NDepend will help me.</p>
<p>There is so much to say, that it&rsquo;s almost impossible to cover it all in one single post. I&rsquo;ll continue to use it and post any relevant information and features that I really enjoyed in the next couple of weeks.</p>