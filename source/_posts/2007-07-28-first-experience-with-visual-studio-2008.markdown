---
layout: post
title: "First experience with Visual Studio 2008"
date: 2007-07-28 14:58:00
comments: true
categories: 
---

<p><strong>Edit : This is actually some features of the new C# 3.0 compiler.</strong></p>
<p>Yesterday I've downloaded the Beta 2 of Visual Studio 2008 and .NET 3.5. And I decided to start writing a little journal application. During the first hour I had not seen anything new and really started wondering what were the advantages of migrating to 2008 if you are not doing Web Application (new features concerning CSS, JavaScript, debugging, etc..). I decided to do a quick search on Google, and found the <a href="http://weblogs.asp.net/scottgu/" mce_href="http://weblogs.asp.net/scottgu/" target="_blank">ScottGu's Blog</a> (highly recommended) which was enumerating some new features. And found 2 that was directly applicable now to my application : <strong>Automatic Properties</strong> and <strong>Query Syntax.</strong> <strong><u style="">Automatic Properties</u></strong>.  Suppose you are writing properties for a class. Don't you find that you are creating private field for nothing. Wouldn't it be simpler that the compiler generate it automatically for you. Check this out :</p>
<pre><span style="color:#0000ff;" mce_style="color:#0000ff;">public</span> <span style="color:#2b91af;" mce_style="color:#2b91af;">DateTime</span>? EntryDate
{
   <span style="color:#0000ff;" mce_style="color:#0000ff;">get</span> { <span style="color:#0000ff;" mce_style="color:#0000ff;">return</span> _entryDate; }
   <span style="color:#0000ff;" mce_style="color:#0000ff;">set</span> { _entryDate = <span style="color:#0000ff;" mce_style="color:#0000ff;">value</span>; }
}</pre>
<p><a href="http://11011.net/software/vspaste" mce_href="http://11011.net/software/vspaste"></a> become</p>
<pre><span style="color:#0000ff;" mce_style="color:#0000ff;">public</span> <span style="color:#2b91af;" mce_style="color:#2b91af;">DateTime</span>? EntryDate { <span style="color:#0000ff;" mce_style="color:#0000ff;">get</span>; <span style="color:#0000ff;" mce_style="color:#0000ff;">set</span>; }</pre>
<p>Less code means more time to do something else, so I'm happy! And what about&nbsp;  <u style=""><strong>Query Syntax</strong></u>?  I had a collection of JournalEntry instance and wanted to find the instance containing the date the user selected. The way I had done it at first was to iterate through the collection and check if the date was the same (I could have done it with predicate too). But the way LINQ handle it was too cool not to try it.  P.S One advice before you try this. Make sure the project is compiled using .NET 3.5 and you reference System.Core.  My little loop has became this :</p>
<pre><span style="color:#2b91af;" mce_style="color:#2b91af;">IEnumerable</span>&lt;<span style="color:#2b91af;" mce_style="color:#2b91af;">JournalEntry</span>&gt; results = <span style="color:#0000ff;" mce_style="color:#0000ff;">from</span> j <span style="color:#0000ff;" mce_style="color:#0000ff;">in</span> Journal
                                    <span style="color:#0000ff;" mce_style="color:#0000ff;">where</span> j.EntryDate == selectedDate
                                    <span style="color:#0000ff;" mce_style="color:#0000ff;">select</span> j;</pre>
<p><a href="http://11011.net/software/vspaste" mce_href="http://11011.net/software/vspaste"></a></p>