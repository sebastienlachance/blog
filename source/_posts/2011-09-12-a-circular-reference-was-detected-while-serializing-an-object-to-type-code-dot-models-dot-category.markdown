---
layout: post
title: "A Circular Reference Was Detected While Serializing an Object to Type Code.Models.Category"
date: 2011-09-12 10:38
comments: true
categories: 
---

I have an NHibernate class with the following properties : 

    public class Category
    {
        public virtual int Id { get; set; }
        public virtual string Name { get;set; }
        public virtual Category Parent { get;set; }
        public virtual IList<Category> Childs { get;set; }
    }

And an action that return a list of categories as JSON :

    public JsonResult Categories 
    {
        return Json(GetCategories(), JsonRequestBehavior.AllowGet);
    }

I know that it's not pefect to use an NHibernate class instead of a view model, but it's a very very small application and I'm trying to keep things clean. 

**Solution : **
    return Json(GetCategories().Select(c => new { c.Id, c.Name }), JsonRequestBehavior.AllowGet);
