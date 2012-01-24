---
layout: post
title: "Setting up a Subversion server (using svnserve)"
date: 2007-11-29 12:44:00
comments: true
categories: 
---

<p><a href="http://sebastienlachance.com/building-a-new-application-series/">(Index of the whole series)</a></p>
<p>I got hold of an old computer that I will be able to use as a continuous integration server and Subversion repository. This weekend, I got some free time and decided to set-up Subversion on it. I was surprised on how much it was easy. The documentation is all but superfluous and it was very instructive. So here is how you can do it.</p>
<p><strong>Downloading and installing subversion</strong></p>
<p>You can find the latest version <a href="http://subversion.tigris.org/servlets/ProjectDocumentList?folderID=91">on this page</a>. I used the <a href="http://subversion.tigris.org/files/documents/15/39559/svn-1.4.5-setup.exe">svn-1.4.5-setup.exe</a> one. Just install it like any other program, there is no additional things to modify in the setup.</p>
<p><strong>Setting up a repository</strong></p>
<p>You may want to create a repository right now to make sure that you can make some test later. I recommend using <a href="http://tortoisesvn.tigris.org/">TortoiseSVN</a> for that, unless you want to learn all the command to use Subversion (not so hard to do). To do that, you simply need to create a folder that you want as a repository (this folder will hold all your files and every change made to them), and right click on it. Select the <strong>TortoiseSVN\Create repository here</strong> menu items and select the Native File System (FSFS) radio button. You now have fully working repository. For a comparison of Native File System versus Berkeley Database, take a look at this : <a href="http://svn.apache.org/repos/asf/subversion/trunk/notes/fsfs">Native File System versus Berkeley Database</a>.</p>
<p><a title="createrepository" href="http://www.flickr.com/photos/63483657@N00/2066565635/"><img src="http://static.flickr.com/2218/2066565635_122648ef83.jpg" border="0" alt="createrepository" /></a></p>
<p><strong>svnserve</strong></p>
<p>You then have two choices to use Subversion remotely. First one is to use the Apache HTTP server and the second one is to use svnserve. I have decided to use svnserve because it's a lightweight server program and I don't need encryption and logging. Also svnserve is a lot faster and it's the best options for small teams. You may want to make sure you are able to access it. Open a command prompt and type svnserve. You should see the following :</p>
<p><a title="svnserve-commandprompt" href="http://www.flickr.com/photos/63483657@N00/2065650429/"><img src="http://static.flickr.com/2152/2065650429_5fcea341c8.jpg" border="0" alt="svnserve-commandprompt" /></a></p>
<p>If you still planning to use svnserve right now, you have two choices : install it as a service or open it each time you want to access a repository.</p>
<p>If you are planning to open it each time you want to access your repository, launch a command prompt and type <strong>svnserve -d</strong>. You have access to all the repositories you may have created on the server.</p>
<p>If, however, you decide to use it as a Windows Service (it will reopen automatically each time you start the server), Use this at a command prompt :</p>
<p><strong>C:\&gt; sc create svn binpath= "\"C:\program files\svn\bin\svnserve.exe\" --service -r C:\nameofyourrepository" displayname= "Subversion Server" depend= Tcpip start= auto</strong></p>
<p><strong>Controlling access</strong></p>
<p>If you attempted to use this right now to make a check-in, you will find that you don't have Write access. This can be changed by editing the svnserve.conf found in your repository folder. You need to find the <strong># anon-access = read</strong> and change it to <strong>anon-access = write </strong>(don't forget to remove #)<strong>. </strong>This will grant write access to all anonymous users. This is not the ideal, but in a single programmer scenario it works perfectly. However, note that if you need a more robust authentication solution, it's totally possible. I will not cover it right now, but the full procedure is described in the TortoiseSVN documentation (Section 3.2.4).</p>
<p><a title="svnservedotconf" href="http://www.flickr.com/photos/63483657@N00/2066587611/"><img src="http://static.flickr.com/2232/2066587611_f8b0676611.jpg" border="0" alt="svnservedotconf" /></a></p>
<p>&nbsp;</p>
<p><strong>Accessing the repository remotely</strong></p>
<p>Open the repository browser (shown below) and type <strong>svn://nameofyourserver/nameofyourrepository</strong>. Can it be more easy?</p>
<p><a title="access" href="http://www.flickr.com/photos/63483657@N00/2067411144/"><img src="http://static.flickr.com/2126/2067411144_580c22ef46.jpg" border="0" alt="access" /></a></p>