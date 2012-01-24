---
layout: post
title: "Convert a test to Rhino Mocks 3.5 and the number of constraints"
date: 2008-10-01 05:56:00
comments: true
categories: 
---

<p>I decided to convert a test to Rhino Mocks 3.5 to "enhance readability". This test was using constraints to make sure that properties of a supplied object was changed during the execution of the tested method.</p>
<p><strong>Original Code :</strong></p>
<div>
<pre style="font-size: 8pt; overflow: visible; width: 100%; color: black; line-height: 12pt; font-family: consolas, 'Courier New', courier, monospace; background-color: #f4f4f4; border-style: none; margin: 0; padding: 0;">var mockery = <span style="color:#0000ff;">new</span> MockRepository();
var mockedRequestRepository = mockery.DynamicMock&lt;IRequestRepository&gt;();
var sut = <span style="color:#0000ff;">new</span> RequestService(mockedPreviewRequestRepository, <span style="color:#0000ff;">null</span>);

Expect.Call(mockedRequestRepository.GetByID(1)).Return(<span style="color:#0000ff;">new</span> Request { ID = 1 });
mockedRequestRepository.Update(<span style="color:#0000ff;">null</span>);
LastCall.Constraints(Property.Value(<span style="color:#006080;">"RequestState"</span>, RequestState.BeingProcessed));

mockery.ReplayAll();

sut.MarkAsBeingProcessed(1);

mockery.VerifyAll();</pre>
</div>
<p><strong></strong>&nbsp;</p>
<p><strong>Converted Code (Rhino Mocks 3.5) :</strong></p>
<div>
<pre style="font-size: 8pt; overflow: visible; width: 100%; color: black; line-height: 12pt; font-family: consolas, 'Courier New', courier, monospace; background-color: #f4f4f4; border-style: none; margin: 0; padding: 0;">var requestRepository = MockRepository.GenerateMock&lt;IPreviewRequestRepository&gt;();

var sut = <span style="color:#0000ff;">new</span> RequestService(requestRepository, <span style="color:#0000ff;">null</span>);

requestRepository.Expect(rr =&gt; rr.GetByID(1)).Return(<span style="color:#0000ff;">new</span> Request {ID = 1});
requestRepository.Expect(rr =&gt; rr.Update(<span style="color:#0000ff;">null</span>)).IgnoreArguments().Constraints(
    Property.Value(<span style="color:#006080;">"RequestState"</span>, RequestState.BeingProcessed), Property.Value(<span style="color:#006080;">"ID"</span>, 1));

sut.MarkAsBeingProcessed(1);

requestRepository.VerifyAllExpectations();</pre>
</div>
<p>&nbsp;</p>
<p>However, on the converted test, I got this nasty exception :</p>
<p><em>System.InvalidOperationException: The number of constraints is not the same as the number of the method's parameters!</em></p>
<p>After playing around with different combinations of constraints I found out that you can supply a predicate to the Is.Matching constraint. So I ended up modifying my constraint a little.</p>
<div>
<pre style="font-size: 8pt; overflow: visible; width: 100%; color: black; line-height: 12pt; font-family: consolas, 'Courier New', courier, monospace; background-color: #f4f4f4; border-style: none; margin: 0; padding: 0;">requestRepository.Expect(rr =&gt; rr.Update(<span style="color:#0000ff;">null</span>)).IgnoreArguments().Constraints(
         Rhino.Mocks.Constraints.Is.Matching(
             (IRequest request) =&gt; request.ID == 1 &amp;&amp; request.RequestState == RequestState.BeingProcessed));</pre>
</div>
<p>&nbsp;</p>
<p>Et voila! Everything works fine. However, I would like to hear how you got to get rid of this message if there is another way.</p>
<p>&nbsp;</p>
<div id="scid:d7bf807d-7bb0-458a-811f-90c51817d5c2:71ec4516-d034-4edb-8cc5-597562dadbeb" class="wlWriterSmartContent" style="display:inline;margin:0;padding:0;">
</div>