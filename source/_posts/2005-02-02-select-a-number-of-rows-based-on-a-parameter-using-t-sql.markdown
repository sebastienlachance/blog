---
layout: post
title: "Select a number of rows based on a parameter using T-SQL"
date: 2005-02-02 05:35:00
comments: true
categories: 
---

<p>Today I was trying to select a predetermined number of rows in a table using a parameter... Syntax Error.</p>
<p><em><span style="font-size: x-small;">SELECT TOP @n ID FROM TableName</span></em></p>
<p>After a small research I found two solutions to this problem. First, the SET ROWCOUNT :</p>
<p><em><span style="font-size: x-small;">SET ROWCOUNT @n</span></em></p>
<p><em><span style="font-size: x-small;">SELECT ID FROM TableName</span></em></p>
<p><em><span style="font-size: x-small;">SET ROWCOUNT 0</span></em></p>
<p>&nbsp;</p>
<p>The second solution is with dynamic SQL :</p>
<p><span style="font-size: x-small;"><em>declare @a int, @str varchar(100)</em></span></p>
<p><span style="font-size: x-small;"><em>set @a = 10</em></span></p>
<p><span style="font-size: x-small;"><em>set @str = 'select top ' + cast(@a as varchar(100)) + ' * from Orders'exec (@str)</em></span></p>
<p>A little more complex, but worth to take a look at it. Oh and also, on the new SQL Server that will be coming soon, this problem is solved and you can pass parameter to the TOP operator.</p>