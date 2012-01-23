---
layout: post
title: "Reponsive and Mobile-Friendly Design with Skeleton"
date: 2012-01-13 10:16
comments: true
categories: design
---

{% img left /images/skeleton.jpg skeleton %}

When we first made the [Guide des Commerces](http://www.guidedescommercesdebeauce.com "Guide des Commerces"), we didn't anticipated we would need to adapt to other devices so soon. In fact, it we know it was for this year but we though it would be a completely different application for iPhone, Android or a new website. 

A month ago we had a discussion with a Facebook expert and talked about adding the Guide to our existing [page](http://www.facebook.com/pages/Guide-des-Commerces-de-Beauce/190606624290004) (just an iframe with the app). The problem is that we use fixed width everywhere and Facebook iframe has only 520px. It would not be wise to develop another site only for Facebook and another one only for mobile device. We needed another solution. 

It occured to me that we could hit three birds with one stone (a lot more actually). We only have to use a responsive desig<

I tried various css framework and settled down for [Skeleton](getskeleton.com "Skeleton framework"). It provided me with everything I needed and I can almost use it as-is without any modification. It use Media Queries (link here) to adapt to various screen size (tablet, mobile, iOS, etc.).

If you don't know Skeleton, it's basically a grid framework with sixteen column totally a width of 960 pixel. 

Suppose you have a div that you want to take 100% of the page.

    <div class="sixteen columns">
    </div>

You can also have a three column layout very easily:

    <div class="one-third column">
    </div>

    <div class="one-third column">
    </div>

    <div class="one-third column">
    </div>

When you resize your browser, everything just resize nicely.

I am almost 5 hours in now, and I've struggled a little but the result is amazing. And I frankly don't regret the framework choice at all.

Stay tuned for more...

