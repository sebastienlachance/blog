---
layout: post
title: "Setting ComVisible"
date: 2005-01-19 14:46:00
comments: true
categories: 
---

<p>Today, I have tried FxCop from <a href="http://www.gotdotnet.com/">GotDotNet</a>, and the first warning was about the assembly not marked with the ComVisible attribute. What this attribute does in fact is to limit access to components from Vb6. Here is how you can do that:<br /><br />Step 1: Open AssemblyInfo (cs or vb extension) file.<br />Step 2: Add this [assembly: ComVisible(false)] or remove it if needed.)<br /><br />So it's all. I hope this is a worthy advice.</p>