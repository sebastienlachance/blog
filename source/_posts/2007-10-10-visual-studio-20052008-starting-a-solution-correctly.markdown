---
layout: post
title: "Visual Studio 2005/2008 : Starting a solution correctly"
date: 2007-10-10 12:30:00
comments: true
categories: 
---

<p>I'm always wondering about what should I be blogging today. But not today. I want to give back some of the stuff I've learned in the past years. The question was : I'm starting with what? After some time, it struck me right in the face. I know that some people would prefer using notepad over Visual Studio, but I'm not there to discuss that. I found that mastering an editor is a great to get started and will allow you more time to code and less time to wonder where is the option that will highlight the file you are in. So the first posts will be about Visual Studio 2005. And the very first is about how to start a solution correctly.</p>

<h2>Why?</h2>

<p>
Given the number of people I helped with that, I think this is something you should know. You should not start be creating a project. Doing that will lead you to a messy folder hierarchy and a wrong solution name.
</p>

<h2>When?</h2>

<p>
Everytime you start a solution.
</p>

<h2>How?</h2>

<p>
You start by clicking File\New\Project... or Ctrl-Shift-N.
</p>

<p>
<a href="http://www.flickr.com/photos/63483657@N00/1534280146/" title="FileNewProject"><img src="http://static.flickr.com/2107/1534280146_35c54906fc.jpg" alt="FileNewProject" border="0" /></a>
</p>

<p>
In tree on the left you need to go to the Other Project Types node and select Visual Studio Solutions. You now have the choice of selecting the Blank Solution item. You should notice that the checkbox for the Create directory for solution is grayed out, this means that a directory will be created for the solution. In our case, it will be : C:\dev\dotnet\Solution1. This folder will also contains a Solution1.sln and Solution1.suo. This is exactly what we want, every project you will add will be placed in this folder. The hierarchy you see in the Solution Explorer will be the same as your solution.
</p>

<p>
<a href="http://www.flickr.com/photos/63483657@N00/1534280372/" title="BlankSolution"><img src="http://static.flickr.com/2026/1534280372_70567c2cf9.jpg" alt="BlankSolution" border="0" /></a>
</p>

<p>
<u><strong>.sln file</strong></u>
</p>

<p>
This is the solution file that Visual Studio will use to load all project associated with the solution. As well as other options that does not need to be covered now.
</p>

<p>
<strong><u>.suo file</u></strong>
</p>

<p>
This binary file contains information about what files were currently in edition, collapsed nodes, etc. When you close and reopen Visual Studio 2005, it will read this file to replace it the way it was before.
</p>