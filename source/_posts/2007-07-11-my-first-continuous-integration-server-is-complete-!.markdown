---
layout: post
title: "My first continuous integration server is complete !"
date: 2007-07-11 15:19:00
comments: true
categories: 
---

<p>I have completed configuring my first continuous integration server for an ASP.NET Web Application.  Here is the workflow:</p>
<ol>
<li>Get the latest source from SourceSafe.</li>
<li>Compile of course. The first compilation is done with MSBuild.</li>
<li>Second compilation with devenv.exe (Visual Studio). For some reason, MSBuild does not compile deployment and Setup project.</li>
<li>Run unit test with MSTest.</li>
<li>Run Simian to detect code duplication.</li>
<li>Delete previous log file.</li>
<li>Deploy the web application.</li>
<li>Copy Web.Config to the web application folder.</li>
<li>Create database and execute all the database scripts.</li>
<li>Start Selenium Remote Control and execute all functional tests.</li>
</ol>
<p>The tools used are:</p>
<ul>
<li>CruiseControl.NET</li>
<li>sqlcmd</li>
<li>NAnt</li>
<li>Visual Studio 2005</li>
<li>Selenium Remote Control</li>
<li>MSBuild</li>
<li>MSTest</li>
<li>Simian</li>
</ul>
<p>I have been through a lot of problem during the setup, but how fascinating it was! I was in constant learning.</p>