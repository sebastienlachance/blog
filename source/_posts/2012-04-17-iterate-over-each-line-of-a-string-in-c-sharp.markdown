---
layout: post
title: "Iterate over each line of a string in C#"
date: 2012-04-17 07:53
comments: true
categories: csharp .net
---

For future reference.

Easy way to go through each line of a string.

``` csharp string iteration
using (StringReader reader = new StringReader(txt))
{
    string line;
    while ((line = reader.ReadLine()) != null)
    {
        Console.Log("do anything with the line);
    }
}
```
