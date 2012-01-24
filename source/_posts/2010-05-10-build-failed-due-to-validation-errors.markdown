---
layout: post
title: "Build failed due to validation errors"
date: 2010-05-10 09:53:00
comments: true
categories: 
---

<p><strong>Error 1 Build failed due to validation errors in C:\projects\webapp1\Database.dbml. Open the file and resolve the issues in the Error List, then try rebuilding the project. C:\projects\webapp1\Database.dbml</strong></p>
<p>The package Visual Studio use to build a LinqToSql database is marked to be skipped, so a quick reset of the &ldquo;skip loading list&rdquo; will resolve this issue.</p>
<p>1. Open a command prompt and navigate to : &lt;visualstudiofolder&gt;\Common7\IDE</p>
<p>2. Then execute : devenv.exe /resetskippkgs</p>
<div id="scid:0767317B-992E-4b12-91E0-4F059A8CECA8:ffefc919-aaf0-486d-9702-17cf911cef60" class="wlWriterEditableSmartContent" style="padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; display: inline; float: none; padding-top: 0px">Technorati Tags: <a rel="tag" href="http://technorati.com/tags/visualstudio">visualstudio</a>,<a rel="tag" href="http://technorati.com/tags/linq">linq</a></div>