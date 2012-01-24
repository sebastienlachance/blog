---
layout: post
title: "Create a read-only collection with ReadOnlyCollection<T>"
date: 2008-02-26 09:18:00
comments: true
categories: 
---

<p><span style="text-decoration: underline;"><strong>Problem :</strong> </span></p>
<p>I have a collection of entities in my repository. Those entities are not supposed to be visible to the outside world. But, In a test I am supposed to see if all objects are still there and I can't use the GetAll method because it goes to the database and return everything, not just the collection of entities in my repository.</p>
<p><span style="text-decoration: underline;"><strong>Solution :</strong></span></p>
<p>I could expose the collection but how can I be sure that nothing will be changed. I could create a copy of the collection but that would not reflect the "Entity" concept. I know that Java has support for returning a read-only collection. A little bit of search and I found the class <strong>ReadOnlyCollection&lt;T&gt;.</strong> This is thread-safe and any changes to the original collection will be reflected in it since it is only a wrapper.</p>
<div>
<pre style="line-height: 12pt; background-color: #f4f4f4; margin: 0px; width: 100%; font-family: consolas, 'Courier New', courier, monospace; color: black; font-size: 8pt; overflow: visible; border-style: none; padding: 0px;"><span style="color: #0000ff">public</span> <span style="color: #0000ff">static</span> IList&lt;IRecipe&gt; _identityMap = <span style="color: #0000ff">new</span> List&lt;IRecipe&gt;();

  <span style="color: #0000ff">public</span> IList&lt;IRecipe&gt; IdentityMap
  {
      get { <span style="color: #0000ff">return</span> <span style="color: #0000ff">new</span> ReadOnlyCollection&lt;IRecipe&gt;(_identityMap); }
  }</pre>
</div>
<p>Could not be easier!</p>