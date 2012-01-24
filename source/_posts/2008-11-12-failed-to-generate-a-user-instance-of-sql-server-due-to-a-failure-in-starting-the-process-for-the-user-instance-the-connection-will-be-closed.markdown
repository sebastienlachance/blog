---
layout: post
title: "Failed to generate a user instance of SQL Server"
date: 2008-11-12 09:24:00
comments: true
categories: 
---

<p>I got this strange error when adding a database to the App_Data folder of a web application project :</p>
<p>&nbsp;</p>
<p><strong>Failed to generate a user instance of SQL Server due to a failure in starting the process for the user instance. The connection will be closed.</strong></p>
<p>Deleting the <em><strong>C:\Documents and Settings\&lt;username&gt;\Local Settings\Application Data\Microsoft\Microsoft SQL Server Data </strong></em>folder has resolved the problem. I had to try twice after that for adding it correctly.</p>