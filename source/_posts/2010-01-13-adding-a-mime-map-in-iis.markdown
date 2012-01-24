---
layout: post
title: "Adding a MIME map in IIS"
date: 2010-01-13 10:16:00
comments: true
categories: 
---

<p><strong>HTTP Error 404.3 - Not Found</strong></p>
<p><em>The page you are requesting cannot be served because of the extension configuration. If the page is a script, add a handler. If the file should be downloaded, add a MIME map.</em></p>
<p>I got this error when trying to let user download .dwg files in IIS 7.5 but a MIME map was not created. Any uncommon files will get you this error. Fortunately, it&rsquo;s very easy to do.</p>
<p>Open IIS and navigate to your site. Now click on <strong>MIME Type</strong> (shown below).</p>
<p><a href="http://sebastienlachance.com/image.axd?picture=finding-mime-type-in-iis.png"><img style="border-bottom: 0px; border-left: 0px; display: inline; border-top: 0px; border-right: 0px" title="finding mime type in iis" src="http://sebastienlachance.com/image.axd?picture=finding-mime-type-in-iis_thumb.png" border="0" alt="finding mime type in iis" width="505" height="484" /></a></p>
<p>Right click and select <strong>Add </strong>(or click Add&hellip; in the right-side menu). You are now presented with a dialog requesting you to enter your filename extension and the MIME type (<a title="A list of possible MIME types" href="http://www.webmaster-toolkit.com/mime-types.shtml" target="_blank">list of possible MIME types</a>). This will enable you to associate a file extension with a type of content.</p>
<p><a href="http://sebastienlachance.com/image.axd?picture=adding-a-mime-type.png"><img style="border-bottom: 0px; border-left: 0px; display: inline; border-top: 0px; border-right: 0px" title="adding a mime type" src="http://sebastienlachance.com/image.axd?picture=adding-a-mime-type_thumb.png" border="0" alt="adding a mime type" width="644" height="376" /></a></p>
<p><span style="color: #222222; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 17px;">H2R77MC2M35K&nbsp;</span></p>