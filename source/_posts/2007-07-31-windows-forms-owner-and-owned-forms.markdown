---
layout: post
title: "Windows Forms : Owner and Owned Forms"
date: 2007-07-31 14:53:00
comments: true
categories: 
---

<p>Since I'm pretty new to Windows Forms I learned a lot this weel (I have a lot more experience in ASP.NET development). I came across this feature and found it really interesting, Owner and Owned Forms. We can say that for the user it's the same thing as the <strong>ShowDialog()</strong> method (grayed parent form, etc...). However, with <strong>ShowDialog </strong>there is no built-in way to make a link between the parent and the child form.</p>
<p>There is 2 way we can make this relation and making the child window aware of the parent:</p>
<p><strong><span style="text-decoration: underline;">1. As a parameter in the Show() method</span></strong></p>
<pre><span style="color:#2b91af;">Form1</span> childForm = <span style="color:#0000ff;">new</span> <span style="color:#2b91af;">Form1</span>();
childForm.Show(<span style="color:#0000ff;">this</span>); <span style="color:#008000;">//this is the parent form</span></pre>
<p><br /> <strong><span style="text-decoration: underline;">2. Using the properties</span></strong></p>
<pre><span style="color:#2b91af;">Form1</span> childForm = <span style="color:#0000ff;">new</span> <span style="color:#2b91af;">Form1</span>();
childForm.Owner = <span style="color:#0000ff;">this</span>; <span style="color:#008000;">//this is the parent form</span></pre>
<p><br /> And you can iterate through the child form of the parent form with the <strong>OwnedForms </strong>property.</p>