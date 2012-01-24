---
layout: post
title: "How to test if someone subscribed to an event with Rhino Mocks"
date: 2008-11-10 09:26:00
comments: true
categories: 
---

<p>Very common scenario. There is probably a better way to do this, but this one get the job done.</p>
<div>
<pre style="line-height: 12pt; background-color: #f4f4f4; margin: 0px; width: 100%; font-family: consolas, 'Courier New', courier, monospace; color: black; font-size: 8pt; overflow: visible; border-style: none; padding: 0px;">var mockedView = MockRepository.GenerateMock&lt;ICustomerView&gt;();
mockedView.Expect(v=&gt;v.Save += <span style="color: #0000ff">null</span>).IgnoreArguments();
mockedView.Expect(v=&gt;v.Delete += <span style="color: #0000ff">null</span>).IgnoreArguments();
mockedView.Expect(v=&gt;v.Load += <span style="color: #0000ff">null</span>).IgnoreArguments();
<span style="color: #0000ff">new</span> CustomerPresenter(mockedView); <span style="color: #008000">//Subscribtion to events </span>
mockedView.VerifyAllExpectations();</pre>
</div>