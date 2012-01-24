---
layout: post
title: "ChangeConflictException: Row not found or changed"
date: 2008-07-08 12:01:00
comments: true
categories: 
---

<p>Hummm, I love this unclear exception message. I just can't believe there is not a condition somewhere to return whether the row was not found or just changed. It would be a lot easier to diagnose problems.</p>
<p>Anyway, after reading several article on concurrency regarding Linq to SQL and making sure the date field was sent correctly (like suggested everywhere), I finally pin-pointed the problem when I remembered that I had changed a NOT NULL column to a NULL column. Et voila. Problem solved!</p>