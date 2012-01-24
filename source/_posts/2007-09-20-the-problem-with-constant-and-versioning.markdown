---
layout: post
title: "The problem with Constant and Versioning"
date: 2007-09-20 08:06:00
comments: true
categories: 
---

<p>Suppose you have 2 assembly, called ProjectA and ProjectB. And each one of the assembly have a corresponding ClassA and ClassB class. In the ClassA class, you have a constant.</p>

<p>Example :</p>

<pre>public const string SPNAME = "SP_Insert_Something";</pre>

<p>Then the ClassB class use the constant in his code. You compile, everything work as expected. After a while, you change the value of the SPNAME constant for "SP_Insert_Another_Thing". You recompile, but the problem is that the ClassB (which is in another assembly not recompiled) will still use the old value. At compile-time, the value of the constant is added to the IL (Intermediate Language) and no reference at all is made to the constant field of the ClassA class in the ProjectA assembly. You should consider using a readonly field. When using the readonly keyword, the value will not be inserted into the IL code and the code will instead check the value stored in the ProjectA assembly.</p>

<pre>public readonly string spname= "SP_Insert_Something";</pre>

<br />
