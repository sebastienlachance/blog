---
layout: post
title: "Reality of type sharing in WCF"
date: 2007-11-13 12:40:00
comments: true
categories: 
---

<p>I am working a lot right now with WCF (Windows Communication Foundation). I am doing the service side of the architecture. The problem we faced this week was with type sharing. Suppose you have a customer class and an address class as data contract. The customer have an address list. Then we have two services who use those types, CustomerService and AddressService. One of the service do operation with the customer and the second on the address. All this one one assembly. On a real world scenario we had to take the address of the customer we just got with the customer's service and provide it to the address's services.</p>

<p>We used Visual Studio to generate the proxies for those services. Since CustomerService and AddressService are each one aware of the 2 data contracts (Address and Customer) the call made to svcutil from Visual Studio does not generate proxies with type sharing. You have yourself two times the address class and then can't be passed from one service to another.</p>

<p>
But fortunately, a solution exist!
</p>

<p>
1. I had to separate the data contracts from the services contracts and puts them in a new assembly.
</p>

<p>
2. Do not ever use Visual Studio to add service reference (this is what will get you 2 times the same class in 2 different namespaces ).
</p>

<p>
3. Learn to use svcutil. Then learn about the /r: switch. When using this switch, you can specify which assembly to use when resolving reference.
</p>

<p>
The 2 downside I see, is that you can't use Visual Studio anymore to generate proxies and that you need to control both side (service and client). Or at least the service side and provide the data contracts assembly to your client.
</p>