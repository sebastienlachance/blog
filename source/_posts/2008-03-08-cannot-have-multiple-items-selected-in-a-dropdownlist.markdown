---
layout: post
title: "Cannot have multiple items selected in a DropDownList"
date: 2008-03-08 13:09:00
comments: true
categories: 
---

<h4><em>Cannot have multiple items selected in a DropDownList.</em></h4>
<p><strong>Description: </strong>An unhandled exception occurred during the execution of  the current web request. Please review the stack trace for more information  about the error and where it originated in the code. <br /><strong>Exception Details: </strong>System.Web.HttpException: Cannot have multiple items selected in a  DropDownList. <br /><strong>Source Error:</strong></p>
<p>&nbsp;</p>
<pre>Line 253:  total = parseFloat(lblTotal.innerHTML.replace('$', '').replace(',', '.'));<br />Line 254:  fBudget = parseFloat(budget.replace('$', '').replace(',', '.'));<br />Line 255:  var lblWarningContract = document.getElementById('&lt;%= lblWarningContract.ClientID %&gt;');<br />Line 256:                        <br />Line 257:  if (total &gt; fBudget)</pre>
<p>I spent at least one hour figuring this out. The <strong>Source  Error</strong>&nbsp; does not contain any valid information. After a lot of  debugging, I finally found the solution : you should never use the same item  twice on two different dropdownlist.</p>
<div>
<pre style="border-style: none; margin: 0px; padding: 0px; overflow: visible; line-height: 12pt; background-color: #f4f4f4; width: 100%; font-family: consolas,'Courier New',courier,monospace; color: black; font-size: 8pt;">ListItem item = <span style="color: #0000ff;">new</span> ListItem(<span style="color: #006080;">" -- Select one -- "</span>, <span style="color: #006080;">"-1"</span>);<br /><br />ddlLoadingContact.Items.Insert(0, item);<br />ddlUnloadingContact.Items.Insert(0, item);</pre>
</div>
<p>&nbsp;</p>
<p>A <strong>ListItem</strong> have a property called <strong>Selected</strong> that tells which one (the item) the dropdownlist should display as selected. If  you use the same ListItem in more that one dropdownlist and you select this item  in the DropDownA and a different item in DropDownB. The DropDownB will have two  ListItem with the Selected property set to <strong>true</strong>. Since this is  the same item in both dropdownlist.</p>
<div>
<pre style="border-style: none; margin: 0px; padding: 0px; overflow: visible; line-height: 12pt; background-color: #f4f4f4; width: 100%; font-family: consolas,'Courier New',courier,monospace; color: black; font-size: 8pt;">ddlLoadingContact.SelectedValue = <span style="color: #006080;">"-1"</span>; <span style="color: #008000;">//item will have the Selected property set to true</span><br />ddlUnloadingContact.SelectedValue = <span style="color: #006080;">"John"</span>; <span style="color: #008000;"> //another item will have the Selected property set to <span style="color: #0000ff;">true</span>. And both are contained <span style="color: #0000ff;">in</span> <span style="color: #0000ff;">this</span> dropdownlist.</span></pre>
</div>
<div>&nbsp;</div>
<div>
<div class="wlWriterSmartContent" style="margin: 0px; padding: 0px; display: inline; float: none;">del.icio.us Tags: <a rel="tag" href="http://del.icio.us/popular/DropDownList">DropDownList</a>,<a rel="tag" href="http://del.icio.us/popular/ASP.NET">ASP.NET</a>,<a rel="tag" href="http://del.icio.us/popular/multiple%20items%20selected">multiple  items selected</a></div>
</div>
<div>&nbsp;</div>