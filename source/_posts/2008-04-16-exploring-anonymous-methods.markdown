---
layout: post
title: "Exploring Anonymous Methods"
date: 2008-04-16 11:13:00
comments: true
categories: 
---

<p>My desire to explore Delegates and Anonymous Methods came from my next exploration, which will be the the Lambda feature. So, I will probably do an article on it in a near future.</p>
<p>So, what exactly is an anonymous method? It's a C# 2.0 feature. Whenever you encounter the need to pass something as a delegate parameter, you can use an anonymous method.</p>
<p><strong>Example : </strong></p>
<p>This class has a method that expect a delegate that has no parameter and no return value.</p>
<div>
<pre style="border-style: none; margin: 0pt; padding: 0pt; overflow: visible; font-size: 8pt; width: 100%; color: black; line-height: 12pt; font-family: consolas,'Courier New',courier,monospace; background-color: #f4f4f4;"><span style="color: #0000ff;">public</span> <span style="color: #0000ff;">class</span> Action<br />{<br />    <span style="color: #0000ff;">public</span> <span style="color: #0000ff;">delegate</span> <span style="color: #0000ff;">void</span> MyActionDelegate();<br /><br />    <span style="color: #0000ff;">public</span> <span style="color: #0000ff;">void</span> Execute(MyActionDelegate myActionDelegate)<br />    {<br />        myActionDelegate.Invoke();<br />    }<br />}</pre>
</div>
<p>Previously, you would have declared a method that has no parameter and no return value and passed it to the Execute method. Like this :</p>
<div>
<pre style="border-style: none; margin: 0pt; padding: 0pt; overflow: visible; font-size: 8pt; width: 100%; color: black; line-height: 12pt; font-family: consolas,'Courier New',courier,monospace; background-color: #f4f4f4;"><span style="color: #0000ff;">public</span> <span style="color: #0000ff;">static</span> <span style="color: #0000ff;">void</span> DoSomething()<br />{<br />    Console.WriteLine(<span style="color: #006080;">"This is not an anonymous method."</span>);<br />}<br /><br /><span style="color: #0000ff;">static</span> <span style="color: #0000ff;">void</span> Main(<span style="color: #0000ff;">string</span>[] args)<br />{<br />    Action action = <span style="color: #0000ff;">new</span> Action();<br /><br />    action.Execute(DoSomething);<br />}</pre>
</div>
<p>An the output would be :</p>
<p><a title="DelegateOutput" href="http://www.flickr.com/photos/63483657@N00/2417530780/"><img src="http://static.flickr.com/3155/2417530780_d7395030f0.jpg" border="0" alt="DelegateOutput" /></a></p>
<p>With an anonymous method, we reduce the code and by the same occasion, augment code readability.</p>
<div>
<pre style="border-style: none; margin: 0pt; padding: 0pt; overflow: visible; font-size: 8pt; width: 100%; color: black; line-height: 12pt; font-family: consolas,'Courier New',courier,monospace; background-color: #f4f4f4;"><span style="color: #0000ff;">static</span> <span style="color: #0000ff;">void</span> Main(<span style="color: #0000ff;">string</span>[] args)<br />{<br />    Action action = <span style="color: #0000ff;">new</span> Action();<br />    action.Execute(<span style="color: #0000ff;">delegate</span>() { Console.WriteLine(<span style="color: #006080;">"This is inside an anonymous method."</span>); });<br />}</pre>
</div>
<p><a title="AnonymousOutput" href="http://www.flickr.com/photos/63483657@N00/2417538708/"><img src="http://static.flickr.com/3188/2417538708_0e339a00d8.jpg" border="0" alt="AnonymousOutput" /></a></p>
<p>If the delegate has expected a parameter you could have done it like :</p>
<div>
<pre style="border-style: none; margin: 0pt; padding: 0pt; overflow: visible; font-size: 8pt; width: 100%; color: black; line-height: 12pt; font-family: consolas,'Courier New',courier,monospace; background-color: #f4f4f4;">action.Execute(<span style="color: #0000ff;">delegate</span>(<span style="color: #0000ff;">string</span> s) { Console.WriteLine(s); });</pre>
</div>
<p>And if the delegate have an return value, make sure you return one of the correct type :</p>
<div>
<pre style="border-style: none; margin: 0pt; padding: 0pt; overflow: visible; font-size: 8pt; width: 100%; color: black; line-height: 12pt; font-family: consolas,'Courier New',courier,monospace; background-color: #f4f4f4;">action.Execute(<span style="color: #0000ff;">delegate</span>(<span style="color: #0000ff;">string</span> s) { <span style="color: #0000ff;">return</span> s; });</pre>
</div>
<p>&nbsp;</p>
<p><strong>Accessing variables located outside the anonymous block :</strong></p>
<p>A feature of an anonymous method is the ability to access variables located outside the anonymous scope (anonymous-method-block). Those variables called <strong>"outer variables".</strong> It is better explained by an example :</p>
<div>
<pre style="border-style: none; margin: 0pt; padding: 0pt; overflow: visible; font-size: 8pt; width: 100%; color: black; line-height: 12pt; font-family: consolas,'Courier New',courier,monospace; background-color: #f4f4f4;"><span style="color: #0000ff;">string</span> myString = <span style="color: #006080;">"Outside the anonymous method."</span>;<br />action.Execute(<span style="color: #0000ff;">delegate</span>(<span style="color: #0000ff;">string</span> s) { Console.WriteLine(myString); });</pre>
</div>
<p><a title="AnonymousScope" href="http://www.flickr.com/photos/63483657@N00/2416747123/"><img src="http://static.flickr.com/3228/2416747123_db158829a6.jpg" border="0" alt="AnonymousScope" /></a></p>
<p>The exception to this rule are the ref and out parameters, which cannot be accessed by the anonymous method. You also can't put unsafe code in the anonymous method.</p>
<p><strong>Real life example </strong></p>
<p>Maybe not (it's always hard to come with great example), but it illustrate how you can use an anonymous method to find all string matching "String5" inside a collection of string. Just imagine doing the same thing in your collection of orders or products.</p>
<div>
<pre style="border-style: none; margin: 0pt; padding: 0pt; overflow: visible; font-size: 8pt; width: 100%; color: black; line-height: 12pt; font-family: consolas,'Courier New',courier,monospace; background-color: #f4f4f4;">List&lt;<span style="color: #0000ff;">string</span>&gt; myListOfString = <span style="color: #0000ff;">new</span> List&lt;<span style="color: #0000ff;">string</span>&gt;();<br /><br /><span style="color: #0000ff;">for</span> (<span style="color: #0000ff;">int</span> x = 0; x &lt; 10; x++)<br />{<br />    myListOfString.Add(<span style="color: #006080;">"String"</span> + x);<br />}<br /><br />List&lt;String&gt; returnedStrings = myListOfString.FindAll(<span style="color: #0000ff;">delegate</span>(<span style="color: #0000ff;">string</span> s) { <span style="color: #0000ff;">return</span> s == <span style="color: #006080;">"String5"</span>; });</pre>
</div>
<p>&nbsp;</p>
<p><strong>Conclusion</strong></p>
<p>Mastering Anonymous Methods is a great skill to have in you toolbox. But be careful, if you need to reuse the same code again and again, you better have to create a method and put the code in it. Don't try to impress your friends too much. :)</p>
<div id="scid:0767317B-992E-4b12-91E0-4F059A8CECA8:4f5732e1-da9d-4fc1-8e6b-806baab699a2" class="wlWriterSmartContent" style="display: inline; margin: 0; padding: 0;">Technorati Tags: <a rel="tag" href="http://technorati.com/tags/C#%202.0">C# 2.0</a>,<a rel="tag" href="http://technorati.com/tags/dotnet">dotnet</a>,<a rel="tag" href="http://technorati.com/tags/anonymous%20methods">anonymous methods</a>,<a rel="tag" href="http://technorati.com/tags/lambda">lambda</a></div>