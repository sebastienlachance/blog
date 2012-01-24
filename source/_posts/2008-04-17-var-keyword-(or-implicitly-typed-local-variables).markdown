---
layout: post
title: "var keyword (or Implicitly Typed Local Variables)"
date: 2008-04-17 11:14:00
comments: true
categories: 
---

<p>If you are like me and installed the nightly build of Resharper 4, you might have seen the recommendation it made to use the keyword "var" almost everywhere. But why?</p>
<p>Here is my answer :</p>
<p>First of all, you must know that the keyword var is not like "Variant". It is not late-bound or loosely typed. The compiler will be able to infer the type from the right side of the expression. In many case, it's optional, but sometime you don't have a choice. It's the case with Anonymous Types :</p>
<div>
<pre style="border-style: none; margin: 0pt; padding: 0pt; overflow: visible; font-size: 8pt; width: 100%; color: black; line-height: 12pt; font-family: consolas,'Courier New',courier,monospace; background-color: #f4f4f4;">var customer = <span style="color: #0000ff;">new</span> {ID = 1, Name = <span style="color: #006080;">"Sebastien"</span>, CreditCardNumber = <span style="color: #006080;">"You can dream!"</span>};</pre>
</div>
<div>&nbsp;</div>
<div>It is also often seen with LINQ.</div>
<div>&nbsp;</div>
<div>Should you use it everywhere you can? Well, it's a matter of preferences. Mine is to use it only when necessary. If the code is harder to understand when using var, then declare the variable explicitly.</div>
<div>&nbsp;</div>
<div id="scid:0767317B-992E-4b12-91E0-4F059A8CECA8:b7c2d5ae-e385-40c6-8caf-548521011400" class="wlWriterSmartContent" style="display: inline; margin: 0; padding: 0;"><a rel="tag" href="http://technorati.com/tags/Resharper"></a></div>