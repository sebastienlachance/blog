---
layout: post
title: "Visual Studio 2005/2008 : Reference Path"
date: 2007-10-15 12:05:00
comments: true
categories: 
---

<p>When I came across this feature, my world changed forever. When you are in a multi-user scenario and your assemblies are stored in a different folder from your peer, then you have this solution.</p>
<p>Suppose you get the latest version from the project you are working on and the reference to AssemblyA is broken because the path of the assembly is C:\dev\lib. But you know that you have it in a folder somewhere else and you don't want to duplicate that assembly. Then the reference path will come to the rescue. Adding a reference path will add a place that will be looked when checking for references.</p>
<p>This is how you do it :</p>
<p><span style="text-decoration: underline;">Step 1. In the solution explorer, right-click on the project with a broken reference.</span></p>
<p><span style="text-decoration: underline;">Step 2. Click <strong>Reference Paths</strong> tab</span></p>
<p><span style="text-decoration: underline;">Step 3. Enter the folder in which your assembly is located.</span></p>
<p><span style="text-decoration: underline;">Step 4. Click the <strong>Add Folder</strong> button.</span> This is what it should look like :<br /><br /> <a title="Reference" href="http://www.flickr.com/photos/63483657@N00/1579443132/"><img src="http://static.flickr.com/2029/1579443132_68a5d255ec.jpg" border="0" alt="Reference" /></a></p>
<p>Notice that you can also <strong>Update</strong> and <strong>Delete</strong> reference in this page.</p>