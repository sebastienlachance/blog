---
layout: post
title: "Activator.CreateInstance problem"
date: 2008-01-17 09:47:00
comments: true
categories: 
---

<p>There is thing you know you should do, but with too much confidence, you will forget. This was the case this morning with the Activator.CreateInstance method.</p>
<p>I was getting this error :</p>
<blockquote>
<p>Exception has been thrown by the target of an invocation.<br />&nbsp;&nbsp; at System.RuntimeTypeHandle.CreateInstance(RuntimeType type, Boolean publicOn<br />ly, Boolean noCheck, Boolean&amp; canBeCached, RuntimeMethodHandle&amp; ctor, Boolean&amp; b<br />NeedSecurityCheck)<br />&nbsp;&nbsp; at System.RuntimeType.CreateInstanceSlow(Boolean publicOnly, Boolean fillCach<br />e)<br />&nbsp;&nbsp; at System.RuntimeType.CreateInstanceImpl(Boolean publicOnly, Boolean skipVisi<br />bilityChecks, Boolean fillCache)<br />&nbsp;&nbsp; at System.Activator.CreateInstance(Type type, Boolean nonPublic)<br />&nbsp;&nbsp; at System.RuntimeType.CreateInstanceImpl(BindingFlags bindingAttr, Binder bin<br />der, Object[] args, CultureInfo culture, Object[] activationAttributes)<br />&nbsp;&nbsp; at System.Activator.CreateInstance(Type type, BindingFlags bindingAttr, Binde<br />r binder, Object[] args, CultureInfo culture, Object[] activationAttributes)<br />&nbsp;&nbsp; at System.Activator.CreateInstance(String assemblyName, String typeName, Bool<br />ean ignoreCase, BindingFlags bindingAttr, Binder binder, Object[] args, CultureI<br />nfo culture, Object[] activationAttributes, Evidence securityInfo, StackCrawlMar<br />k&amp; stackMark)<br />&nbsp;&nbsp; at System.Activator.CreateInstance(String assemblyName, String typeName)<br />&nbsp;&nbsp; at DynamicsGP.GPListener.Program.Main(String[] args)</p>
</blockquote>
<p>After double and triple checking with Reflector and outputing everything possible to the console, I wasn't able to figure out what I did wrong.</p>
<p>The solution was easy, I was not checking the InnerException of the exception. Turn out is was only a missing dll.</p>