---
layout: post
title: "Where did my strongly-typed action link has gone in ASP.NET MVC?"
date: 2008-10-23 05:53:00
comments: true
categories: 
---

<div>
<pre style="font-size: 8pt; overflow: visible; width: 100%; color: black; line-height: 12pt; font-family: consolas, 'Courier New', courier, monospace; background-color: #f4f4f4; border-style: none; margin: 0; padding: 0;">&lt;%= Html.ActionLink&lt;EquipmentController&gt;(c=&gt;c.Show(equipment.Number, equipment.Letter), <span style="color:#006080;">"See"</span>) %&gt;</pre>
</div>
<p>If you have converted your old ASP.NET MVC Preview * application to ASP.NET MVC beta or following tutorials that were made with those old versions, you may have wondered where the strongly-typed action is gone.</p>
<p>The reason is because of some features that can still evolve in future release of ASP.NET MVC. And since it will be fully supported in the version 1 of the product, and for backward compatibility, they cannot include it in the released assemblies. But, fear not, the feature is available in the <a href="http://www.codeplex.com/Project/Download/FileDownload.aspx?ProjectName=aspnet&amp;DownloadId=46509" target="_blank">ASP.NET MVC Futures assembly</a>.</p>