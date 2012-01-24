---
layout: post
title: "Set a value on an Textbox with his TextMode set to Password"
date: 2009-01-29 09:23:00
comments: true
categories: 
---

<p>I have a basic scenario which i'm required to display a page where an user can change his user information, including his password. I decided to use an ASP.NET Textbox control which have a TextMode of password. But,&nbsp; when I put the password in the Text property, nothing will be displayed. The value will also be cleared after a postback event.</p>
<p>There is an easy workaround, you can add the "value" attribute with the password as your value.</p>
<div>
<pre style="line-height: 12pt; background-color: #f4f4f4; margin: 0px; width: 100%; font-family: consolas, 'Courier New', courier, monospace; color: black; font-size: 8pt; overflow: visible; border-style: none; padding: 0px;">txtPassword.Attributes.Add(<span style="color: #006080">"value"</span>, "strongPassword");</pre>
</div>
<p>But why can't we just set the value the normal way? Basically, it's for security reasons. The password will be set as clear text in the HTML and malicious user could have access to it. This is why you need to stay away from this method if you store sensitive information.</p>