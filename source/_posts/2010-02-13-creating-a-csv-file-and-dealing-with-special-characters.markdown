---
layout: post
title: "Creating a CSV file and dealing with special characters."
date: 2010-02-13 11:47:00
comments: true
categories: 
---

<p>Last week, I created a web page that allowed some users to download a list of name with their email addresses as a CSV file. However, some characters were not exported correctly.</p>
<p>Here is a sample of the code I used :</p>
<div id="scid:DFDE9937-D816-47f4-A306-7B60D5CE5AC0:c19a92c7-0558-479a-89f2-04931ce64dfa" class="wlWriterEditableSmartContent" style="padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; display: inline; float: none; padding-top: 0px">
<pre class="brush: csharp; gutter: true; first-line: 1; tab-size: 2;  toolbar: true; ">StringBuilder sb = new StringBuilder();
IList&lt;Subscriber&gt; subscribers = Subscriber.GetAll();
foreach (Subscriber subscriber in subscribers)
{
    sb.AppendLine(string.Format("{0},{1}", subscriber.Email, subscriber.Name.Replace(",", "")));
}

Response.Clear();
Response.ContentType = "application/CSV";
Response.AddHeader("content-disposition", "attachment; filename=\"subscribers.csv\"");
Response.Write(sb.ToString());
Response.End();</pre>
<!-- Code inserted with Steve Dunn's Windows Live Writer Code Formatter Plugin.  http://dunnhq.com --></div>
<p>And some name looked like this when opened in Excel : s&Atilde;&copy;bastien lachance. Not really the expected results.</p>
<p>Why is this occurring?</p>
<p>The default encoding for the response stream is <a title="UTF-8 (8-bit UCS/Unicode Transformation Format) on Wikipedia" href="http://en.wikipedia.org/wiki/UTF-8" target="_blank">UTF-8 (8-bit UCS/Unicode Transformation Format)</a> and Excel will not detect it due to the lack of BOM (Byte Order Mark). Instead, it will try to open the file using the ASCII encoding. It appear to be a known bug and the fix for it is easy.</p>
<p>&nbsp;</p>
<div id="scid:DFDE9937-D816-47f4-A306-7B60D5CE5AC0:4a3450c7-cba7-4b7f-bc9d-ceb41495ef7b" class="wlWriterEditableSmartContent" style="padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; display: inline; float: none; padding-top: 0px">
<pre class="brush: csharp; gutter: true; first-line: 1; tab-size: 2;  toolbar: true; ">Response.ContentEncoding = Encoding.Unicode;</pre>
<!-- Code inserted with Steve Dunn's Windows Live Writer Code Formatter Plugin.  http://dunnhq.com --></div>
<p>&nbsp;</p>
<p>or</p>
<div id="scid:DFDE9937-D816-47f4-A306-7B60D5CE5AC0:1e333776-622d-4809-a801-96e83b8cfdde" class="wlWriterEditableSmartContent" style="padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; display: inline; float: none; padding-top: 0px">
<pre class="brush: csharp; gutter: true; first-line: 1; tab-size: 2;  toolbar: true; ">Response.Write("\uFEFF");</pre>
<!-- Code inserted with Steve Dunn's Windows Live Writer Code Formatter Plugin.  http://dunnhq.com --></div>
<p>&nbsp;</p>
<p>Just before writing to the stream.</p>
<pre></pre>
<p><a href="http://en.wikipedia.org/wiki/Byte_order_mark"></a></p>