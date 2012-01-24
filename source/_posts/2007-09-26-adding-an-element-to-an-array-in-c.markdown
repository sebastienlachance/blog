---
layout: post
title: "Adding an element to an array in C#"
date: 2007-09-26 11:54:00
comments: true
categories: 
---

It's probably the same thing in VB.NET but the example here is in C#.  <p style="border:1px solid gray;overflow:auto;font-size:8pt;width:97.5%;cursor:text;max-height:200px;line-height:12pt;font-family:consolas,'Courier New',courier,monospace;background-color:#f4f4f4;margin:20px 0 10px;padding:4px;"> <p style="overflow:visible;font-size:8pt;width:100%;color:black;line-height:12pt;font-family:consolas,'Courier New',courier,monospace;background-color:#f4f4f4;border-style:none;padding:0;"> <pre style="overflow:visible;font-size:8pt;width:100%;color:black;line-height:12pt;font-family:consolas,'Courier New',courier,monospace;background-color:white;border-style:none;margin:0;padding:0;"><span style="color:#606060;">   1:</span> Address[] addresses = customer.AddressList;</pre>
<pre style="overflow:visible;font-size:8pt;width:100%;color:black;line-height:12pt;font-family:consolas,'Courier New',courier,monospace;background-color:#f4f4f4;border-style:none;margin:0;padding:0;"><span style="color:#606060;">   2:</span></pre>
<pre style="overflow:visible;font-size:8pt;width:100%;color:black;line-height:12pt;font-family:consolas,'Courier New',courier,monospace;background-color:white;border-style:none;margin:0;padding:0;"><span style="color:#606060;">   3:</span> Array.Resize(<span style="color:#0000ff;">ref</span> addresses, addresses.Length + 1);</pre>
<pre style="overflow:visible;font-size:8pt;width:100%;color:black;line-height:12pt;font-family:consolas,'Courier New',courier,monospace;background-color:#f4f4f4;border-style:none;margin:0;padding:0;"><span style="color:#606060;">   4:</span></pre>
<pre style="overflow:visible;font-size:8pt;width:100%;color:black;line-height:12pt;font-family:consolas,'Courier New',courier,monospace;background-color:white;border-style:none;margin:0;padding:0;"><span style="color:#606060;">   5:</span> addresses[addresses.Length - 1] = address;</pre> </p>
            </p>