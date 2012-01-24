---
layout: post
title: "Subtle deadly bug"
date: 2009-04-28 13:12:00
comments: true
categories: 
---

<p>I almost never give my opinion about code I see, but I felt this one was interesting and educative. It all started while working on a legacy project (an ASP.NET web application), I found out that most connections were not closed. So I fixed them all and making sure every connection was closed once the I finished with it, should an error occurred or not.</p>
<div id="scid:57F11A72-B0E5-49c7-9094-E3A15BD5B5E6:8118b2d6-5135-47d0-b247-ef271923e7a1" class="wlWriterSmartContent" style="display:inline;float:none;margin:0;padding:0;">
<pre style="background-color:#FFFFFF;white-space:pre-wrap;overflow:auto;"><span style="color:#0000FF;">try</span><span style="color:#000000;">
{
    </span><span style="color:#0000FF;">using</span><span style="color:#000000;"> (IDataReader reader </span><span style="color:#000000;">=</span><span style="color:#000000;"> SqlHelper.ExecuteReader(Sql.MainConnection, </span><span style="color:#800000;">"</span><span style="color:#800000;">sp_name</span><span style="color:#800000;">"</span><span style="color:#000000;">, paramter1, parameter2))
    {
        </span><span style="color:#0000FF;">while</span><span style="color:#000000;"> (dr.Read())
        {
            </span><span style="color:#008000;">//</span><span style="color:#008000;">do something</span><span style="color:#008000;">
</span><span style="color:#000000;">        }
    }
}
</span><span style="color:#0000FF;">finally</span><span style="color:#000000;">
{
    Sql.MainConnection.Close();
}
</span></pre>
<p><!-- Code inserted with Steve Dunn's Windows Live Writer Code Formatter Plugin.  http://dunnhq.com --></p>
</div>
<p>&nbsp;</p>
<p>Pretty basic stuff. Today I deployed the application to a server for some testing. After two or&nbsp; three users getting in, Boumm! SQL Server is dead. I check the activity monitor and found out that a hundred connections were still open. The reason is : I have wrongly assumed that a static class in the project was providing me with a connection that was shared between all data access class.</p>
<p>I was sure I was closing all the connection, but I ended up closing nothing.&nbsp; Let&rsquo;s take a look at the MainConnection property of the Sql class :</p>
<div id="scid:57F11A72-B0E5-49c7-9094-E3A15BD5B5E6:01969617-5143-4414-a4b7-7872c03b234f" class="wlWriterSmartContent" style="display:inline;float:none;margin:0;padding:0;">
<pre style="background-color:#FFFFFF;overflow:auto;"><span style="color:#0000FF;">public</span><span style="color:#000000;"> </span><span style="color:#0000FF;">static</span><span style="color:#000000;"> SqlConnection GetMainConnection
{
    </span><span style="color:#0000FF;">get</span><span style="color:#000000;"> { </span><span style="color:#0000FF;">return</span><span style="color:#000000;"> </span><span style="color:#0000FF;">new</span><span style="color:#000000;"> SqlConnection(</span><span style="color:#800000;">"</span><span style="color:#800000;">connectionstring</span><span style="color:#800000;">"</span><span style="color:#000000;">); }
}</span></pre>
<p><!-- Code inserted with Steve Dunn's Windows Live Writer Code Formatter Plugin.  http://dunnhq.com --></p>
</div>
<p>Each time I was accessing the database, and it was accessed a lot (20 times per request), I ended up with a lot of open connections. Enough to make SQL Server unavailable for some time. You could argue that it was my mistake and I shouldn&rsquo;t be assuming things like this. But in my opinion, it&rsquo;s a case of bad naming. The choice of name for the property that return me a connection was inconstant. If I access a property, I assumed that if I call it five times in a row, I would have five times the same result. The best choice would have been to create a method that return a new connection and name it accordingly.</p>
<div id="scid:57F11A72-B0E5-49c7-9094-E3A15BD5B5E6:bfa7123c-52b7-4563-821f-c65f85cb9f1a" class="wlWriterSmartContent" style="display:inline;float:none;margin:0;padding:0;">
<pre style="background-color:#FFFFFF;overflow:auto;"><span style="color:#0000FF;">public</span><span style="color:#000000;"> </span><span style="color:#0000FF;">void</span><span style="color:#000000;"> SqlConnection GetNewSqlConnection()
{
    </span><span style="color:#0000FF;">return</span><span style="color:#000000;"> </span><span style="color:#0000FF;">new</span><span style="color:#000000;"> SqlConnection(</span><span style="color:#800000;">"</span><span style="color:#800000;">connectionString</span><span style="color:#800000;">"</span><span style="color:#000000;">);
}</span></pre>
<p><!-- Code inserted with Steve Dunn's Windows Live Writer Code Formatter Plugin.  http://dunnhq.com --></p>
</div>
<p>It would have reduced the ambiguity and would have been a lot more easy to read. Good naming is very important and can greatly enhance productivity on a project. Good code should be easy to read and you should not ask yourself if a calling a method would cause side-effects or not doing what it said it should.</p>
<p>&nbsp;</p>
<div id="scid:d7bf807d-7bb0-458a-811f-90c51817d5c2:d29c8c0a-0596-4844-956f-a942b68268e0" class="wlWriterSmartContent" style="display:inline;float:none;margin:0;padding:0;">
<p><span class="TagSite">Technorati:</span> <a class="tag" rel="tag" href="http://technorati.com/tag/Learning">Learning</a>, <a class="tag" rel="tag" href="http://technorati.com/tag/.NET">.NET</a>, <a class="tag" rel="tag" href="http://technorati.com/tag/SQL+Server">SQL Server</a>, <a class="tag" rel="tag" href="http://technorati.com/tag/DataAccess">DataAccess</a><br /> <!-- StartInsertedTags: Learning, .NET, SQL Server, DataAccess :EndInsertedTags --></p>
</div>