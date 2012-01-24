---
layout: post
title: "Refreshing my memory : Delegates in C#"
date: 2008-04-09 11:12:00
comments: true
categories: 
---

<p>I haven't really used delegates since I was programming with the .NET Framework 1.0. Since I have some spare time left, I decided to '"refresh my memory". I have prepared a little cheat-sheet that you can use as a reminder for the delegates functionalities in the .NET Framework 3.0.</p>
<p><strong>1. What is a delegate?</strong></p>
<p>A delegate is a data structure that refers to one or multiples static methods and/or instance methods. You can use this when you have a dynamic list of methods to be called that you don't know ahead of time.</p>
<p><strong>2. How to create a delegate?</strong></p>
<pre style="border-style: none; margin: 0pt; padding: 0pt; overflow: visible; font-size: 8pt; width: 100%; color: black; line-height: 12pt; font-family: consolas,'Courier New',courier,monospace; background-color: #f4f4f4;"><span style="color: #0000ff;">public</span> <span style="color: #0000ff;">class</span> TestClass<br />{<br />    <span style="color: #0000ff;">private</span> <span style="color: #0000ff;">delegate</span> <span style="color: #0000ff;">void</span> myDelegate(<span style="color: #0000ff;">string</span> name);<br />}</pre>
<p>The signature of the declaration is very important! The methods that will be contained in the delegate must perfectly match the declaration. In this case, the methods that will be allowed must be void and take a single string as a parameter.</p>
<p>When using the delegate keyword, you are actually creating a <strong>System.MulticastDelegate</strong>.</p>
<p>&nbsp;</p>
<p><strong>3. How do I instantiate a delegate?</strong></p>
<div>
<pre style="border-style: none; margin: 0pt; padding: 0pt; overflow: visible; font-size: 8pt; width: 100%; color: black; line-height: 12pt; font-family: consolas,'Courier New',courier,monospace; background-color: #f4f4f4;"><span style="color: #0000ff;">public</span> <span style="color: #0000ff;">void</span> TestMethod()<br />{<br />    ClassTest test = <span style="color: #0000ff;">new</span> ClassTest();<br /><br />    <span style="color: #008000;">//Instantiating a delegate with an instance method</span><br />    var del1 = <span style="color: #0000ff;">new</span> myDelegate(test.InstanceMethod);<br /><br />    <span style="color: #008000;">//Instantiating a delegate with a static method</span><br />    var del2 = <span style="color: #0000ff;">new</span> myDelegate(ClassTest.StaticMethod)<br />}</pre>
</div>
<p>&nbsp;</p>
<p><strong>4. How do I call the method contained in the delegate?</strong></p>
<div>
<pre style="border-style: none; margin: 0pt; padding: 0pt; overflow: visible; font-size: 8pt; width: 100%; color: black; line-height: 12pt; font-family: consolas,'Courier New',courier,monospace; background-color: #f4f4f4;">del1.Invoke(<span style="color: #006080;">"This is a test."</span>);</pre>
</div>
<p>The <strong>Invoke method</strong> will actually have the same signature as your delegate signature. So you benefit of a strongly-typed way to use the delegate feature. There is also a BeginInvoke and an EndInvoke method to program asynchronously.</p>
<p><strong>5. But you said that you can have more than one method in the delegate?</strong></p>
<p>Actually yes. There is several ways to add more methods, but the easiest way is :</p>
<div>
<pre style="border-style: none; margin: 0pt; padding: 0pt; overflow: visible; font-size: 8pt; width: 100%; color: black; line-height: 12pt; font-family: consolas,'Courier New',courier,monospace; background-color: #f4f4f4;">del1 += ClassTest.StaticMethod;</pre>
</div>
<p>When calling Invoke (or BeginInvoke) each one will be executed in the order that they were added to the delegate. If an exception occurs at any point, the execution is canceled and the remaining methods will not be called. And you will get an exception of course.</p>
<p><strong>5. Anything else?</strong></p>
<p>Yes, a delegate is immutable. Each time you add a method entry point, a new delegate is created for you.</p>