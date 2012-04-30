---
layout: post
title: "Learning Rails : assert_valid_keys"
date: 2012-04-30 06:00
comments: true
categories: rails
---


While reading the source code of [FactoryGirl](https://github.com/thoughtbot/factory_girl), I came accross this method and tried to find where in FactoryGirl it was defined.
Turns out it's in Rails since version 3.0 (more specifically in active_support/core_ext/hash/keys).

It's an instance method of the Hash class, and what it allows you to do is to throw an ArgumentError when an unknown key is found on the hash instance.

``` ruby valid keys
{ :name => "joe", :phone => '555-5555' }.assert_valid_keys(:name, :phone)
 => {:name=>"joe",:phone=>'555-5555'}  # no ArgumentError
```

``` ruby missing key in hash
{ :name => "joe" }.assert_valid_keys(:name, :phone)
 => {:name=>"joe"}  # no ArgumentError
```

``` ruby unknown key in hash
{ :name => "joe", :phone => '555-5555' }.assert_valid_keys(:name)
ArgumentError: Unknown key: phone
```

[assert_valid_keys](http://api.rubyonrails.org/classes/Hash.html#method-i-assert_valid_keys)
