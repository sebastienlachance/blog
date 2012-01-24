---
layout: post
title: "The importance of database versioning"
date: 2008-03-12 11:08:00
comments: true
categories: 
---

<p>2-3 months ago, I have deployed the application I was working on the client. Since then a lot of changes have been made and I did not work on this project. The database changed significantly but the sql script have not been updated with the latest changes. Now, I have to get back on the project to make an update to the client. I can generate a new set of scripts to create a new database, but how am I suppose to update the production database ...</p>
<p>Before I left, I gave instruction on how to version every changes to the database. I wanted to have scripts with every changes that have been made and then run them on the client on future update.</p>
<p>Let's see the pros and cons of not doing so :</p>
<p>PROS :</p>
<ul>
<li>Save time when developing</li>
</ul>
<p>CONS :</p>
<ul>
<li>No way to easily update an existing database </li>
<li>Loose time trying to figure out what is changed </li>
<li>No confidence that you will update the existing database correctly </li>
<li>No way to get back in time if needed</li>
</ul>
<p>Please, version your sql script! It will be much easier for those doing the futur work.</p>