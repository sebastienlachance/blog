---
layout: post
title: "Couldn't Parse YAML at Line X Column X (Psych::SyntaxError)"
date: 2011-09-14 07:50
comments: true
categories: 
---

I am using Rails 3.0.3 and got this error : 
    couldn't parse YAML at line 182 column 9 (Psych::SyntaxError)

As I understand it, there is an issue with the locale file (locale/en.yml) of ActiveSupport.

Just by adding 

    require 'yaml'
    YAML::ENGINE.yamler= 'syck'

at the beginning of the boot.rb file should take care of this issue.


[More info here](https://rails.lighthouseapp.com/projects/8994/tickets/6354-psych-does-not-handle-symbols-in-yaml-used-in-activesupport) [and here](http://stackoverflow.com/questions/4980877/rails-error-couldnt-parse-yaml)
