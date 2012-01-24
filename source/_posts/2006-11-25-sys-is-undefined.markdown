---
layout: post
title: "Sys is undefined"
date: 2006-11-25 14:22:00
comments: true
categories: 
---

<p>Lastly I have got to play a lot with AJAX (ATLAS) and have been pleasantly surprised by the quality and the ease of use of the product. Really easy to use and "a lot of support" for it. For every problem there is a solution and those seem to be resolved fast by the community.</p>
<p>The first really big error so far, is the 'Sys' is undefined one. There seems to have a problem with the anonymous user being disable for the web site (in particular the script folder). Well, I'm sure that I wont allow anonymous users to access critical data, so adding a new location in the Web.Config for this specific folder with solve the problem.</p>
<p>Here is the lines to add :</p>
<p>&lt;location path="ScriptResource.axd"&gt;  <br />&lt;system.web&gt;  <br />&lt;authorization&gt;  <br />&lt;allow users="*"/&gt;  <br />&lt;/authorization&gt;  <br />&lt;/system.web&gt;  <br />&lt;/location&gt;</p>
<p>There can be also the fact that the resource handler is not set, so adding the following line in the Web.Config, should also solve the problem :</p>
<p>&lt;add verb="GET" path="ScriptResource.axd" type="Microsoft.Web.Handlers.ScriptResourceHandler" validate="false"/&gt;</p>