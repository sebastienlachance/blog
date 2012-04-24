---
layout: post
title: "What can we do with Enumerable#Inject?"
date: 2012-04-24 6:00
comments: true
categories: ruby
---

Combine all elements of an enumerable with the supplied block (or symbol)

    [1, 3, 5, 10].inject { |sum, el| sum + el }

What is happenning behid the scene is this: 

    1 + 3  # 1. 
    4 + 5  # 2. The value of the precedent operation is passed back into the block as the first argument.
    9 + 10 # 3. And so on.
   #The result will be 19.

You can also pass an ininial value like this:

    [1,2,3].inject(10) { |sum, el| sum + el }

    10 + 1
    11 + 2
    13 + 3
    The result will be 16.
    You can see it as (((10 + 1) + 2) + 3).

The initial value will serve as the first argument of the block.

