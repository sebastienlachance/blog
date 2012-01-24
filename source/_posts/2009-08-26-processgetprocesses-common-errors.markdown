---
layout: post
title: "Process.GetProcesses common errors"
date: 2009-08-26 08:59:00
comments: true
categories: 
---

<p>Here is a list of common errors I had while working with the System.Diagnostics.Process class. I listed all solutions that worked for me.</p>
<h3>Couldn't connect to remote machine.</h3>
<p><strong>Solution 1</strong> : Open MMC (Start/Run/mmc), add the Services snap-in and enter the name of the machine you are trying to connect to. This should give the exact reason it&rsquo;s failing.</p>
<p><strong>Solution 2</strong> : The inner exception could give you more information.</p>
<p><strong>Solution 3</strong> : You need server permission.</p>
<p><strong>Solution 4</strong> : Common on Windows 7 and Vista, start the <strong>Remote Registry</strong> service.</p>
<h3>The RPC server is unavailable</h3>
<p><strong>Solution </strong>: Turn on <strong>File and printer sharing </strong>and make sure the firewall is configured to allow access.</p>
<h3>Access Is Denied</h3>
<p><strong>Solution</strong> : In case nothing worked out of Google, try this : Open Local Security Policy and make sure the <strong>&ldquo;Set Network access: Sharing and security model for local accounts&rdquo;</strong> to <strong>Classic.</strong></p>