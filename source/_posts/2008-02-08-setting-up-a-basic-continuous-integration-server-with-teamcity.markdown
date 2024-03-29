---
layout: post
title: "Setting up a basic continuous integration server with TeamCity"
date: 2008-02-08 11:21:00
comments: true
categories: 
---

<p>What is TeamCity? It's a software that you would use to do <a href="http://martinfowler.com/articles/continuousIntegration.html" target="_blank">continuous integration</a>. Continuous integration is very important and it should never be an option on a serious project (that's is my opinion and I strongly believe in the values it provide).</p>
<p>If you have followed the <a href="http://sebastienlachance.com/building-a-new-application-series/" target="_blank">Building A New Application Series</a>, you may be wondering why I would want to do that after setting up a complete integration server with CruiseControl.NET. Well, I was skeptical when I first heard about all the fuss surrounding this <a href="http://www.jetbrains.com/" target="_blank">JetBrains</a> project. After all, CruiseControl.NET was doing everything I wanted and more.</p>
<p>So the reason I made the switch is because of the time it take to set it up : 20 minutes. Everything was fully functional in under 20 minutes. I absolutely got no error at all. I just got through all the step of the wizard and then : done. Unit testing, code coverage, build, reports, etc... And it's absolutely free for small team.</p>
<p>The big downside for me was the lack of support out of the box for other unit testing framework (other than NUnit and MSTest). My project is using MbUnit so I will need to do some more research to integrate it in my build process. But it is possible if you want to invest time in doing so.</p>
<p>So let's get started with this little tutorial :</p>
<p>1. Download <a href="http://www.jetbrains.com/teamcity/" target="_blank">TeamCity</a>.</p>
<p>2. Start the installation.</p>
<p>Just follow all the steps. I encountered a slight problem due to something already on port 80, so I used the port 8080.</p>
<p><a title="TeamCity_001" href="http://www.flickr.com/photos/63483657@N00/2246121387/"><img src="http://static.flickr.com/2295/2246121387_bf1eaae094.jpg" border="0" alt="TeamCity_001" /></a></p>
<p><a title="TeamCity_002" href="http://www.flickr.com/photos/63483657@N00/2246121389/"><img src="http://static.flickr.com/2366/2246121389_06f17f5d5e.jpg" border="0" alt="TeamCity_002" /></a></p>
<p><a title="TeamCity_003" href="http://www.flickr.com/photos/63483657@N00/2246121395/"><img src="http://static.flickr.com/2391/2246121395_a81b1d955c.jpg" border="0" alt="TeamCity_003" /></a></p>
<p><a title="TeamCity_004" href="http://www.flickr.com/photos/63483657@N00/2246121397/"><img src="http://static.flickr.com/2266/2246121397_d27ffa9754.jpg" border="0" alt="TeamCity_004" /></a></p>
<p><a title="TeamCity_005" href="http://www.flickr.com/photos/63483657@N00/2246121399/"><img src="http://static.flickr.com/2164/2246121399_a18dd1cc62.jpg" border="0" alt="TeamCity_005" /></a></p>
<p><a title="TeamCity_006" href="http://www.flickr.com/photos/63483657@N00/2246121401/"><img src="http://static.flickr.com/2345/2246121401_5db16b8ce5.jpg" border="0" alt="TeamCity_006" /></a></p>
<p><a title="TeamCity_007" href="http://www.flickr.com/photos/63483657@N00/2246123377/"><img src="http://static.flickr.com/2175/2246123377_676d0d312b.jpg" border="0" alt="TeamCity_007" /></a></p>
<p>I left everything intact in this screen, but this is where you specify some default folder used bu the build agents. The <strong>tempDir </strong>and<strong> workDir</strong> will be used to store your application artifacts and even your source file before the compilation if you don't give it one in the configuration (later).</p>
<p><a title="TeamCity_008" href="http://www.flickr.com/photos/63483657@N00/2246123379/"><img src="http://static.flickr.com/2064/2246123379_b4b8438c38.jpg" border="0" alt="TeamCity_008" /></a></p>
<p><a title="TeamCity_009" href="http://www.flickr.com/photos/63483657@N00/2246123381/"><img src="http://static.flickr.com/2389/2246123381_34aa922d4a.jpg" border="0" alt="TeamCity_009" /></a></p>
<p><a title="TeamCity_010" href="http://www.flickr.com/photos/63483657@N00/2246123385/"><img src="http://static.flickr.com/2295/2246123385_74a8416c54.jpg" border="0" alt="TeamCity_010" /></a></p>
<p>That's it, you have installed TeamCity. Now let's add our project to it.</p>
<p>3. Open TeamCity !!!</p>
<p><a title="TeamCity_011" href="http://www.flickr.com/photos/63483657@N00/2246123387/"><img src="http://static.flickr.com/2410/2246123387_81dfdba0b9.jpg" border="0" alt="TeamCity_011" /></a></p>
<p><a title="TeamCity_012" href="http://www.flickr.com/photos/63483657@N00/2246123391/"><img src="http://static.flickr.com/2087/2246123391_e1d68c0e3f.jpg" border="0" alt="TeamCity_012" /></a></p>
<p>Nothing too complicated here, just enter the username/password you want for the administrator account. The email will be used to sent important information the build server would want you to know..</p>
<p><a title="TeamCity_013" href="http://www.flickr.com/photos/63483657@N00/2246920958/"><img src="http://static.flickr.com/2136/2246920958_abb96960eb.jpg" border="0" alt="TeamCity_013" /></a></p>
<p>What I like is that you will be taken by the hannd for the rest of the steps. Click on the <strong>Create Project</strong> link.</p>
<p><a title="TeamCity_014" href="http://www.flickr.com/photos/63483657@N00/2246920960/"><img src="http://static.flickr.com/2070/2246920960_202f0716f0.jpg" border="0" alt="TeamCity_014" /></a></p>
<p>Name of the project and a description. It will be useful if several projects are on the same build server.</p>
<p><a title="TeamCity_016" href="http://www.flickr.com/photos/63483657@N00/2246920966/"><img src="http://static.flickr.com/2098/2246920966_e3a40f81d3.jpg" border="0" alt="TeamCity_016" /></a></p>
<p>Now click the <strong>Create build configuration</strong> link. You can have multiple build configuration by project.</p>
<p><a title="TeamCity_019" href="http://www.flickr.com/photos/63483657@N00/2246989440/"><img src="http://static.flickr.com/2191/2246989440_434968e2cb.jpg" border="0" alt="TeamCity_019" /></a></p>
<p>In the build configuration window, you can change the way the build number are generated and the default behavior when the build fail. You can also specify that you want to start with a clean project.</p>
<p><a title="TeamCity_020" href="http://www.flickr.com/photos/63483657@N00/2246989444/"><img src="http://static.flickr.com/2210/2246989444_fdf5ddc886.jpg" border="0" alt="TeamCity_020" /></a></p>
<p>There, you can decide how you want the project to be retrieved from the source control repository and where to put him. You can also decide when to label your build. If you do not want a label on a failed build, you can do so. Next, click on <strong>Choose build runner.</strong></p>
<p><a title="TeamCity_021" href="http://www.flickr.com/photos/63483657@N00/2246989450/"><img src="http://static.flickr.com/2062/2246989450_83d90c26fc.jpg" border="0" alt="TeamCity_021" /></a></p>
<p>TeamCity is not only for .NET project. Several build runner are included such as MSBuild, NAnt, sln2003, sln2005, sln2008, Ant, Maven2, etc... Because I am using MbUnit as a testing framework I have decided to stick with MSBuild. But if you are using NUnit or MSTest you may want to use sln2003, sln2005, sln2008 as they can run your unit tests and tell the coverage of your assemblies. You need to fill in the <strong>Solution File Path</strong> field with the name of your .sln, it's relative to your project structure (if it's in the root, enter only the name of your solution file. Fill the rest of the field if you are using NUnit or MSTest.</p>
<p><a title="TeamCity_022" href="http://www.flickr.com/photos/63483657@N00/2246989456/"><img src="http://static.flickr.com/2237/2246989456_ca5e393444.jpg" border="0" alt="TeamCity_022" /></a></p>
<p>Last step! Go to the <strong>Version Control Settings</strong> tab and click <strong>Create and attach new VCS root</strong>. Give it a name and choose the version control system (VCS) you want to use. Fill in the required field.</p>
<p>Save, and you're done!</p>
<p>This is the most basic setup you can have. Of course, there is a lot of other things to configure to your specific needs. You can even have integration inside Visual Studio or Eclipse. As I said before the only downside I found is the lack of support for MbUnit, but I will work something to bypass that.</p>
<p>I may do another post going more in depth if I have time. Or maybe a screencast, that would be a lot of fun. If you're interested, just leave a comment and I will consider it.</p>