---
layout: post
title: "Everything you need to start writing Windows Services"
date: 2005-01-18 14:36:00
comments: true
categories: 
---

<p>This cover everything needed to get a <strong>windows service</strong> up and running.<br /><br />Step 1 : Add code to the OnStart, OnStop, OnContinue and OnPause (or, write your application)<br />Step 2 : Go to the designer of the Web Service. Right-Click, Add Installer.<br />Step 3 : Go to the Bin directory<br />Step 4 : installutil nameofyourapp.exe (make sure you are running your command-line with Visual Studio environment path registred). Your application is installed.<br /><br />Have fun!</p>