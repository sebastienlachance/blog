---
layout: post
title: "Functional programming : Starting to learn Clojure"
date: 2010-07-23 05:15:21
comments: true
categories: 
---

<p>&#160;</p>  <p>The time has come for me to add another language into my toolbox and I decided to look at a functional language : <strong><a title="Clojure&#39;s website" href="http://clojure.org/" target="_blank">Clojure</a></strong>. I have the <a title="Programming Clojure book" href="http://pragprog.com/titles/shcloj/programming-clojure" target="_blank">Programming Clojure</a> book, so why not?</p>  <h3>Clojure is a modern Lisp language.</h3>  <p> Yes, Lisp (LISt Processing). I never thought I would have been near or around it. I heard so many bad things about his complexity and how it would not useful in real life scenarios. But I have heard sometime about programmers who expended their mind to new programming concept with it. The following comment seems to be universal from programmers who knows it well.</p>  <blockquote>   <p>     <br />I struggled to learn it, but once I finally get a grasp on it, it made me a better developer. </p> </blockquote>  <h3>Why?</h3>  <p>In our imperative language (Java, C#, Ruby, etc.) there is really no support for multi-core processing. That is, your program will only run on one core. Clojure is designed to support multi-core in mind and had support for dealing with concurrency really well.</p>  <h3>What is Lisp?</h3>  <p>   <br />From Wikipedia : </p>  <blockquote>   <p>Lisp was originally created as a practical mathematical notation for computer programs, influenced by the notation of Alonzo Church's lambda calculus. It quickly became the favoured programming language for artificial intelligence (AI) research. As one of the earliest programming languages, Lisp pioneered many ideas in computer science, including tree data structures, automatic storage management, dynamic typing, and the self-hosting&#160; compiler.</p> </blockquote>  <p>Just that. And I would like to add that it had a lot of parentheses. A lot.</p>  <h3>Clojure is emitting JVM bytecode and goes hand in hand with Java but maybe not.</h3>  <p>   <br />I was afraid of that. I know Java, but not the whole library. Since Clojure can and will use the library, you better know where you are heading. But again, if you want to learn fast, just jump in the shark pool. But, Java is absolutely not required to program with it if you don’t want to.</p>  <h3>Clojure Code</h3>  <p>   <br />Let's look at an example :     <br /></p>  <div style="padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; display: inline; float: none; padding-top: 0px" id="scid:57F11A72-B0E5-49c7-9094-E3A15BD5B5E6:a41312cd-13d0-4502-b5a3-9079603e6e25" class="wlWriterEditableSmartContent"><pre style="background-color:#FFFFFF;white-space:-moz-pre-wrap; white-space: -pre-wrap; white-space: -o-pre-wrap; white-space: pre-wrap; word-wrap: break-word;overflow: auto;"><span style="color: #000000;">(loop [result [] x </span><span style="color: #800080;">5</span><span style="color: #000000;">]
    (</span><span style="color: #0000FF;">if</span><span style="color: #000000;"> (zero</span><span style="color: #000000;">?</span><span style="color: #000000;"> x)
        result
        (recur (conj result x) (dec x))))</span></pre><!-- Code inserted with Steve Dunn's Windows Live Writer Code Formatter Plugin.  http://dunnhq.com --></div>

<p>
  <br />Output : [5 4 3 2 1] </p>

<p>This snippet of code is actually a loop from 5 to 1 and appending each time the current index to an array</p>

<p>This is not a tutorial but let’s dig deeper at (zero? x). In Clojure, a function that evaluate a condition have the name of it appended of an ?. So zero? is the function name and x is the argument. Yes, you read right, you don’t supply function’s argument like other programming language where it would look like : </p>

<div style="padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; display: inline; float: none; padding-top: 0px" id="scid:DFDE9937-D816-47f4-A306-7B60D5CE5AC0:bcaad55b-8b3b-4d8c-8d5d-17419d286f29" class="wlWriterEditableSmartContent"><pre class="brush: csharp; gutter: false; first-line: 1; tab-size: 4;  toolbar: false; ">bool isZero = IsZero(x);</pre><!-- Code inserted with Steve Dunn's Windows Live Writer Code Formatter Plugin.  http://dunnhq.com --></div>

<h3>Conclusion</h3>

<p>I tried to present a little introduction to Clojure without going into too much details. I am not yet comfortable with every concept and what would be the advantages in real life. But, It will be an interesting trip. After a little more than three weeks now, and almost 10 hours of playing around and I can already say that I will need to see things differently.Very differently.</p>

<p>&#160;</p>

<div style="padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; display: inline; float: none; padding-top: 0px" id="scid:0767317B-992E-4b12-91E0-4F059A8CECA8:a9e9955f-ab4c-44e5-bdb5-a9c57a7a8f3e" class="wlWriterEditableSmartContent">Technorati Tags: <a href="http://technorati.com/tags/clojure" rel="tag">clojure</a>,<a href="http://technorati.com/tags/programming" rel="tag">programming</a></div>