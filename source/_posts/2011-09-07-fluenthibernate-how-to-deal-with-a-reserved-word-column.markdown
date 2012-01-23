---
layout: post
title: "FluentHibernate - How to Deal With a Reserved Word Column"
date: 2011-09-09 16:06
comments: true
categories: [".net"] 
---
Suppose you have a class with an Order property. Any sql operation will throw an error because Order is a reserved word. To prevent this from happening, specify the column name yourself and enclose it with back ticks.  

    public class MessageMap : ClassMap<Message>
    {
        public MessageMap()
        {
            Table("messages");
            Id(x => x.Id);
            ...
            Map(x => x.Order, "`Order`");
            ...
        }
    }
