---
layout: post
title: "Back to ASP.NET WebForms and a lot of pain with the CheckBoxList"
date: 2009-11-05 10:24:00
comments: true
categories: 
---

<p><strong>Edit : This is an old post back from november 2008 on my old blog. Since I had this problem today, I though it would be a good idea to share it again with all my readers.</strong></p>
<p>Going back to standard ASP.NET Web Forms was ridiculously hard. In the last months, I have been completely blown away by the limitless (almost) possibilities of the ASP.NET MVC framework and now I find myself struggling very hard to make a single dropdownlist works the way I wanted to. The scenario was simple, in the client page, I used the value supplied by the drowdown list item to make an AJAX query and display the incoming results somewhere else in the page. That should be very easy right? Well, no. You may not know this but the value attribute of the ASP.NET CheckBoxList's items is not rendered at all.</p>
<p>I know that there is multiple solutions to render it, but that's not the point. I can't find a single reason to not let the developer decide if he want to display it or not. I even heard on some forum (I did not test it myself) that you cannot add a custom attribute named "value" (you can add custom attributes to any controls that will be rendered in the final html) without it to be stripped by the ASP.NET WebForms engine.</p>
<p>Anyway, let's see the solution to this problem.</p>
<p>First of all, we need to create a custom control that will inherit from the <strong>System.Web.UI.WebControls.CheckBoxList</strong> and that will implement the <strong>System.Web.UI.WebControls.IRepeatInfoUser</strong>. We use the base class <strong>CheckBoxList </strong>as we want to reuse existing behavior without implementing it ourselves. As for the IRepeatInfoUser interface, we use it because we are implementing a control that has list items.</p>
<div>
<pre style="border-style: none; margin: 0px; padding: 0px; overflow: visible; line-height: 12pt; background-color: #f4f4f4; width: 100%; font-family: consolas,'Courier New',courier,monospace; color: black; font-size: 8pt;"><span style="color: #0000ff">public</span> <span style="color: #0000ff">class</span> CheckBoxListFixed : CheckBoxList, IRepeatInfoUser
{
    <span style="color: #0000ff">void</span> IRepeatInfoUser.RenderItem(ListItemType itemType, <span style="color: #0000ff">int</span> repeatIndex, RepeatInfo repeatInfo, HtmlTextWriter writer)
    {

    }
}</pre>
</div>
<p>&nbsp;</p>
<p>Inside the RenderItem method we will use the HtmlTextWriter to output all the wanted html.&nbsp; So we want to create an input of type checkbox:</p>
<div>
<pre style="border-style: none; margin: 0px; padding: 0px; overflow: visible; line-height: 12pt; background-color: #f4f4f4; width: 100%; font-family: consolas,'Courier New',courier,monospace; color: black; font-size: 8pt;">writer.WriteBeginTag(<span style="color: #006080">"input"</span>);
writer.WriteAttribute(<span style="color: #006080">"type"</span>, <span style="color: #006080">"checkbox"</span>);
writer.Write(<span style="color: #006080">"&gt;"</span>);
writer.Write(Items[repeatIndex].Text);
writer.WriteEndTag(<span style="color: #006080">"input"</span>);</pre>
</div>
<p>&nbsp;</p>
<p>This will render only basic checkboxes.</p>
<div>
<pre style="border-style: none; margin: 0px; padding: 0px; overflow: visible; line-height: 12pt; background-color: #f4f4f4; width: 100%; font-family: consolas,'Courier New',courier,monospace; color: black; font-size: 8pt;"><span style="color: #0000ff">&lt;</span><span style="color: #800000">table</span> <span style="color: #ff0000">id</span><span style="color: #0000ff">="checkboxList"</span> <span style="color: #ff0000">border</span><span style="color: #0000ff">="0"</span><span style="color: #0000ff">&gt;</span>
    <span style="color: #0000ff">&lt;</span><span style="color: #800000">tr</span><span style="color: #0000ff">&gt;</span>
        <span style="color: #0000ff">&lt;</span><span style="color: #800000">td</span><span style="color: #0000ff">&gt;&lt;</span><span style="color: #800000">input</span> <span style="color: #ff0000">type</span><span style="color: #0000ff">="checkbox"</span><span style="color: #0000ff">&gt;</span>1<span style="color: #0000ff">&lt;/</span><span style="color: #800000">input</span><span style="color: #0000ff">&gt;&lt;/</span><span style="color: #800000">td</span><span style="color: #0000ff">&gt;</span>
    <span style="color: #0000ff">&lt;/</span><span style="color: #800000">tr</span><span style="color: #0000ff">&gt;</span>
    <span style="color: #0000ff">&lt;</span><span style="color: #800000">tr</span><span style="color: #0000ff">&gt;</span>
        <span style="color: #0000ff">&lt;</span><span style="color: #800000">td</span><span style="color: #0000ff">&gt;&lt;</span><span style="color: #800000">input</span> <span style="color: #ff0000">type</span><span style="color: #0000ff">="checkbox"</span><span style="color: #0000ff">&gt;</span>2<span style="color: #0000ff">&lt;/</span><span style="color: #800000">input</span><span style="color: #0000ff">&gt;&lt;/</span><span style="color: #800000">td</span><span style="color: #0000ff">&gt;</span>
    <span style="color: #0000ff">&lt;/</span><span style="color: #800000">tr</span><span style="color: #0000ff">&gt;</span>
    <span style="color: #0000ff">&lt;</span><span style="color: #800000">tr</span><span style="color: #0000ff">&gt;</span>
        <span style="color: #0000ff">&lt;</span><span style="color: #800000">td</span><span style="color: #0000ff">&gt;&lt;</span><span style="color: #800000">input</span> <span style="color: #ff0000">type</span><span style="color: #0000ff">="checkbox"</span><span style="color: #0000ff">&gt;</span>3<span style="color: #0000ff">&lt;/</span><span style="color: #800000">input</span><span style="color: #0000ff">&gt;&lt;/</span><span style="color: #800000">td</span><span style="color: #0000ff">&gt;</span>
    <span style="color: #0000ff">&lt;/</span><span style="color: #800000">tr</span><span style="color: #0000ff">&gt;</span>
    <span style="color: #0000ff">&lt;</span><span style="color: #800000">tr</span><span style="color: #0000ff">&gt;</span>
        <span style="color: #0000ff">&lt;</span><span style="color: #800000">td</span><span style="color: #0000ff">&gt;&lt;</span><span style="color: #800000">input</span> <span style="color: #ff0000">type</span><span style="color: #0000ff">="checkbox"</span><span style="color: #0000ff">&gt;</span>4<span style="color: #0000ff">&lt;/</span><span style="color: #800000">input</span><span style="color: #0000ff">&gt;&lt;/</span><span style="color: #800000">td</span><span style="color: #0000ff">&gt;</span>
    <span style="color: #0000ff">&lt;/</span><span style="color: #800000">tr</span><span style="color: #0000ff">&gt;</span>
    <span style="color: #0000ff">&lt;</span><span style="color: #800000">tr</span><span style="color: #0000ff">&gt;</span>
        <span style="color: #0000ff">&lt;</span><span style="color: #800000">td</span><span style="color: #0000ff">&gt;&lt;</span><span style="color: #800000">input</span> <span style="color: #ff0000">type</span><span style="color: #0000ff">="checkbox"</span><span style="color: #0000ff">&gt;</span>5<span style="color: #0000ff">&lt;/</span><span style="color: #800000">input</span><span style="color: #0000ff">&gt;&lt;/</span><span style="color: #800000">td</span><span style="color: #0000ff">&gt;</span>
    <span style="color: #0000ff">&lt;/</span><span style="color: #800000">tr</span><span style="color: #0000ff">&gt;</span>
<span style="color: #0000ff">&lt;</span><span style="color: #800000">table</span><span style="color: #0000ff">&gt;</span></pre>
</div>
<p>&nbsp;</p>
<p>With no IDs or attributes. Let's add those to each checkbox.</p>
<div>
<pre style="border-style: none; margin: 0px; padding: 0px; overflow: visible; line-height: 12pt; background-color: #f4f4f4; width: 100%; font-family: consolas,'Courier New',courier,monospace; color: black; font-size: 8pt;">writer.WriteBeginTag("input");
writer.WriteAttribute("type", "checkbox");
writer.WriteAttribute("name", UniqueID + this.IdSeparator + repeatIndex.ToString(NumberFormatInfo.InvariantInfo));
writer.WriteAttribute("id", ClientID + this.ClientIDSeparator + repeatIndex.ToString(NumberFormatInfo.InvariantInfo));
           
if (Items[repeatIndex].Selected)
    writer.WriteAttribute("checked", "checked");

System.Web.UI.AttributeCollection attrs = Items[repeatIndex].Attributes;
foreach (string key in attrs.Keys)
{
    writer.WriteAttribute(key, attrs[key]);
}
writer.Write("<span style="color: #0000ff">&gt;</span>");
writer.Write(Items[repeatIndex].Text);
writer.WriteEndTag("input");</pre>
</div>
<div>&nbsp;</div>
<p>We have also added the "checked" to each checkbox. Now we are ready to insert the "missing" value attribute. Adding the following line will resolve the problem.</p>
<div>
<pre style="border-style: none; margin: 0px; padding: 0px; overflow: visible; line-height: 12pt; background-color: #f4f4f4; width: 100%; font-family: consolas,'Courier New',courier,monospace; color: black; font-size: 8pt;">writer.WriteAttribute("value", Items[repeatIndex].Value);</pre>
</div>
<div>&nbsp;</div>
<p>Complete control code :</p>
<div>
<pre style="border-style: none; margin: 0px; padding: 0px; overflow: visible; line-height: 12pt; background-color: #f4f4f4; width: 100%; font-family: consolas,'Courier New',courier,monospace; color: black; font-size: 8pt;">namespace yourNamespace
{
    public class CheckBoxListFixed : CheckBoxList, IRepeatInfoUser
    {
        void IRepeatInfoUser.RenderItem(ListItemType itemType, int repeatIndex, RepeatInfo repeatInfo, HtmlTextWriter writer)
        {
            writer.WriteBeginTag("input");
            writer.WriteAttribute("type", "checkbox");
            writer.WriteAttribute("name", UniqueID + this.IdSeparator + repeatIndex.ToString(NumberFormatInfo.InvariantInfo));
            writer.WriteAttribute("id", ClientID + this.ClientIDSeparator + repeatIndex.ToString(NumberFormatInfo.InvariantInfo));
            writer.WriteAttribute("value", Items[repeatIndex].Value);
            if (Items[repeatIndex].Selected)
                writer.WriteAttribute("checked", "checked");
            System.Web.UI.AttributeCollection attrs = Items[repeatIndex].Attributes;
            foreach (string key in attrs.Keys)
            {
                writer.WriteAttribute(key, attrs[key]);
            }
            writer.Write("<span style="color: #0000ff">&gt;</span>");
            writer.Write(Items[repeatIndex].Text);
            writer.WriteEndTag("input");
        }
    }
}</pre>
</div>
<p>&nbsp;</p>
<p>And here is a bonus : <strong>How to use this control in my code?</strong></p>
<p>Supposing the control isn't in another library and that you cannot add it to your toolbox, you can always use the Register directive inside your aspx file.</p>
<div>
<pre style="border-style: none; margin: 0px; padding: 0px; overflow: visible; line-height: 12pt; background-color: #f4f4f4; width: 100%; font-family: consolas,'Courier New',courier,monospace; color: black; font-size: 8pt;"><span style="background-color: #ffff00">&lt;%@ Register TagPrefix="yourPrefix" Namespace="yourNamespace" %&gt;</span></pre>
</div>
<p>Next, you can declare your control with the format</p>
<p><strong>&lt;<em>tagprefix:</em>CheckboxListFixed runat="server" id="yourID" /&gt;</strong></p>