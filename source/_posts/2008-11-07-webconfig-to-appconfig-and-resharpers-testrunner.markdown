---
layout: post
title: "Web.Config to App.Config and Resharper's TestRunner"
date: 2008-11-07 13:20:00
comments: true
categories: 
---

<p>If you are using the Resharper's TestRunner and have put your tests directly inside your web application assembly, you may ran across the configuration file issue. That is, that you create a test that, in a way or another, will try to access your application configuration file. The problem is that the Web.Config file is not copied to the bin folder and is not renamed following the configuration file convention of anything else that is not a web application. To ensure that you will have access, you can add a post-build event in Visual Studio that will copy the Web.Config to the bin folder with an appropriate name (applicationname.dll.config).</p>
<p>Right-Click on the project =&gt; Properties =&gt; Build Events and paste this :</p>
<p>copy /Y "$(ProjectDir)Web.config" "$(TargetDir)$(TargetFileName).config</p>
<p><a title="BuildEvents" href="http://www.flickr.com/photos/63483657@N00/3005104353/"><img src="http://static.flickr.com/3170/3005104353_0f13ee0f47.jpg" border="0" alt="BuildEvents" /></a></p>