---
layout: post
title: "Unit Testing, LinqToSql and CreateDatabase"
date: 2008-10-27 05:47:00
comments: true
categories: 
---

<p>When using LinqToSql and unit testing in your application, you can benefit from two handy method calls that will make your life a lot easier.</p>
<div>
<pre style="font-size: 8pt; overflow: visible; width: 100%; color: black; line-height: 12pt; font-family: consolas, 'Courier New', courier, monospace; background-color: #f4f4f4; border-style: none; margin: 0; padding: 0;">var db = <span style="color:#0000ff;">new</span> DatabaseDataContext();
db.DeleteDatabase();
db.CreateDatabase();</pre>
</div>
<p>&nbsp;</p>
<p>You won't need to worry about putting the database in a correct state before each of your test. I call them in my setup part of each unit tests that make use of the database.</p>
<p>If you need to insert some test data, so I used the ExecuteCommand method to execute a sql script.</p>
<div>
<pre style="font-size: 8pt; overflow: visible; width: 100%; color: black; line-height: 12pt; font-family: consolas, 'Courier New', courier, monospace; background-color: #f4f4f4; border-style: none; margin: 0; padding: 0;">db.ExecuteCommand(File.ReadAllText(<span style="color:#006080;">@"..\..\..\..\db\referencedata.sql"</span>));</pre>
</div>
<div>&nbsp;</div>
<div>And if you have more than one test that will use this code at a time, you may need to close the connection after the setup.</div>
<div>&nbsp;</div>
<div>Putting it all together look like this :</div>
<div>
<pre style="font-size: 8pt; overflow: visible; width: 100%; color: black; line-height: 12pt; font-family: consolas, 'Courier New', courier, monospace; background-color: #f4f4f4; border-style: none; margin: 0; padding: 0;">var db = <span style="color:#0000ff;">new</span> DatabaseDataContext();
db.DeleteDatabase();
db.CreateDatabase();
db.ExecuteCommand(File.ReadAllText(<span style="color:#006080;">@"..\..\..\..\db\referencedata.sql"</span>));
db.Connection.Close();</pre>
</div>
<p>&nbsp;</p>