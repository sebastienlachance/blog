---
layout: post
title: "Rails model without ActiveRecord"
date: 2012-05-29 11:01
comments: true
categories: rails 
---

Common scenario for a contact form.

Here is how I do it:

``` ruby Model without ActiveRecord in Rails

class Contact
  include ActiveModel::Validations
  include ActiveModel::Conversion

  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def persisted?
    false
  end

end

```
