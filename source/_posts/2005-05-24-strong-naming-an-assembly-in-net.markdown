---
layout: post
title: "Strong naming an assembly in .NET"
date: 2005-05-24 05:44:00
comments: true
categories: 
---

<p>All about Strong Naming in .NET.</p>
<p><br />This is my attempt to explain Strong Name to myself. All the stuff here come from Patterns &amp; Practices : Improving Web Application Security from Microsoft.</p>
<h3>What is a strong named assembly and why you should use it?</h3>
<p><br />A strong name consist of a text name, version number, maybe a culture, public key, and a digital signature.     <br />There are some reasons why you would want to add a strong name to an assembly.</p>
<p><br />1. To protect your code from partial trust assembly.     <br />2. To share your assembly with others applications.     <br />3. Uniquely identify the assembly. Giving cryptographically strong evidence for code access security.</p>
<p><br />And some security benefits, some of which are:</p>
<p><br />1. Digital signature. This, protect your assembly from any modification. Any tampering cause the application to fail.     <br />2. Cannot be called form partially trusted code.     <br />3. Allows administrators to grant specific permission to assembly.</p>
<p>&nbsp;</p>
<h3>To strong name an assembly, here is how you can do it.</h3>
<p><br />1. Generate a key file.</p>
<p><br /><strong>sn.exe &ndash;k keypair.snk</strong></p>
<p><strong></strong></p>
<p><br />2. Add the AssemblyKeyFile attribute to the Assembly.vb or Assembly.cs file of your project. Reference the key file.</p>
<p><br /><strong>[AssemblyKeyFile("@..\..\keypair.snk")]</strong></p>
<p><strong></strong></p>
<p><br />You now have a strong named assembly.</p>
<p>&nbsp;</p>
<h3>Delay signing in development.</h3>
<p><br />You might want to delay sign your assembly in development version. It means that your assembly is available for code security, but it is not yet temper proof. You can still modify your assembly without re-signing.</p>
<p><br />Your private key at this moment could be kept safe until development is complete. If you wish you can us it for all your organisation&rsquo;s assemblies. To implements delay signing, you must first create the key.</p>
<p><br /><strong>sn.exe &ndash;k keypair.snk</strong></p>
<p><strong></strong></p>
<p><br />Then you extract the public key.     <br /><strong>sn.exe &ndash;p keypair.snk publickey.snk</strong></p>
<p><strong></strong></p>
<p><br />You can now take keypair.snk and put it in a safe location, then distribute the public key to the development teams.     <br />This is not all. You must now delay sign your assembly. To do this, you first add the AssemblyKeyFile attribute to your Assembly file.     <br /><strong>[assembly: AssemblyKeyFile(&ldquo;@..\..\publickey.snk&rdquo;)]</strong> <br />Then add the AssemblyDelaySign attribute to true.     <br /><strong>[assembly: AssemblyDelaySign(true)]</strong></p>
<p><strong></strong></p>
<p><br />You will remark that your assembly will fail verification at load time. You will need to disable verification.</p>
<p><br />1. For a specific assembl :     <br />&nbsp;&nbsp;&nbsp; sn &ndash;Vr assembly.dll     <br />2. For all application who use the key:</p>
<p><br /><strong>sn &ndash;Vr *,publickeytoken</strong></p>
<p><strong></strong></p>
<p><br />To extract the public key and key token, you can do that this way:</p>
<p><br /><strong>sn &ndash;Tp assembly.dll</strong></p>
<p><strong></strong></p>
<p><br />Now your assembly has a delayed signing. If you want to complete the process and render your assembly tamper proof. You will now need the private key.</p>
<p><br /><strong>sn &ndash;r assembly.dll keypair.snk </strong></p>