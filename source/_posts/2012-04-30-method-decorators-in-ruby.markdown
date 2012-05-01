---
layout: post
title: "Method decorators in Ruby"
date: 2012-05-01 08:00
comments: true
categories: ruby
---

While I was following the [#railsconf](http://twitter.com/#!/search/%23railsconf) thread on Twitter, I heard some talking about method decorators with Ruby. I've always wondered if there was a way to emulate the [Attribute](http://www.codeguru.com/csharp/.net/article.php/c18741/Understanding-and-Using-NET-Attributes.htm) we have in .NET.

Turns out it is possible (and with added value!). Using the [method_decorators gem](https://github.com/michaelfairley/method_decorators) allow precisely that functionnality with some extras.

## Defining a decorator

``` ruby Defining a decorator
class ADecorator < MethodDecorator
  def call(orig, *args, &blk)
    orig.call(*args, &blk)
  end
end
```

This decorator actually does nothing, since we call the original method with supplied arguments and block (if provided).

## Using the decorator

```ruby Using the decorator
class AClass 
  extends MethodDecorators
  
  +ADecorator
  def do_something() 
  end

end
```
We can now do something before and after the call to  **do_something** and even modify the return value. 

## A practical example

I've had this little problem in .NET where I wanted to profile different method calls to see how much time they took to execute and send back the result via [MiniProfiler](http://miniprofiler.com/). For this, I wanted only to add an attribute to those methods. The only way I have found that possible without the use of an advanced profiling tool was to use [PostSharp](http://www.sharpcrafters.com/postsharp/features) and it's injecting code feature. The Attribute functionnality does not offer any kind of before and after hook on execution.

A custom implementation would look like this. 

```c# MiniProfiler Attribute with PostSharp and C#
[Serializable]
public class ProfilingAspectAttribute : OnMethodBoundaryAspect 
{
  private IDisposable _profiler;

  public ProfilingAspectAttribute
  end

  public override OnEntry(MethodExecutionArgs args) {
    _profiler = MiniProfiler.Current.Step(string.Format("{0}.{1}",
       args.Method.DeclaringType.Name, args.Method.Name);
  }

  public override OnExit(MethodExecutionArgs args) {
    if (_profiler != null) {
      _profiler.Dispose();
      _profiler = null;
    }
  }
}
```
PostSharp will inject the OnEntry and OnExit code at the start and at the end of the "decorated" method. By default, **there is no way to achieve that easily**.

With Ruby, the method_decorators gem and a custom profiler, it would look like this.

```ruby A custom profiling decorator
class Profiling < MethodDecorator

  def call(orig, *args, &blk)
    profiler.start
    orig.call(*args, &blk)
    profiler.stop
  end

end

class SomeClass

  +Profiling
  def some_method_to_be_profiled
    #some complex calculations
  end

end
```

How nice is that?


