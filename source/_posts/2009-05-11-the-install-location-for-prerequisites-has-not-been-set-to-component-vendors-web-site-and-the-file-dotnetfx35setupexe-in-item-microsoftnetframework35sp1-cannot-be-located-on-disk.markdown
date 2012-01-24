---
layout: post
title: "'The install location for prerequisites has not been set' error"
date: 2009-05-11 12:00:00
comments: true
categories: 
---

<p>I think I needed to make this post since I was struck by this problem 2 times in the last year. And I didn&rsquo;t learn from the first time, so here is the error message I got along with 50+ others that looked the same when building a setup from Visual Studio 2008.</p>
<p><em>The install location for prerequisites has not been set to 'component vendor's web site' and the file 'dotNetFx35setup.exe' in item 'Microsoft.Net.Framework.3.5.SP1' cannot be located on disk.</em></p>
<p>At fist, I was thinking that I haven&rsquo;t downloaded the right version of the framework so, I have gone mad trying to find one that was entitled &ldquo;redistributable&rdquo;. Can&rsquo;t find. Humm maybe something has to do with Visual Studio not looking for the right folder (Program Files vs Program Files (x86)). No.</p>
<p>After a lot of questions and no answer, I found a lost notes in Evernote stating that I should read the VS 2008 SP 1 readme file&hellip;</p>
<p>Section 2.3.1.1 : Enable Samesite for the .NET Framework 3.5 SP1 bootstrapper package</p>
<p>Here is the section content for those who don&rsquo;t want to search for their readme file.</p>
<blockquote>
<p>Update the Package Data</p>
<ol>
<li>Open the [Program Files]\Microsoft SDKs\Windows\v6.0A\Bootstrapper\Packages\DotNetFx35SP1 folder or %ProgramFiles(x86)%\Microsoft SDKs\Windows\v6.0A\Bootstrapper\Packages\DotNetFx35SP1 on x64 operating systems </li>
<li>Edit the Product.xml file in Notepad. </li>
<li>Paste the following into the &lt; PackageFiles &gt; element:        <br />&lt; PackageFile Name="TOOLS\clwireg.exe" /&gt;         <br />&lt; PackageFile Name="TOOLS\clwireg_x64.exe" /&gt;         <br />&lt; PackageFile Name="TOOLS\clwireg_ia64.exe" /&gt; </li>
<li>Find the element for &lt; PackageFile Name="dotNetFX30\XPSEPSC-x86-en-US.exe" and change the PublicKey value to: 3082010A0282010100A2DB0A8DCFC2C1499BCDAA3A34AD23596BDB6CBE2122B794C8EAAEBFC<br /> 6D526C232118BBCDA5D2CFB36561E152BAE8F0DDD14A36E284C7F163F41AC8D40B146880DD9<br />8194AD9706D05744765CEAF1FC0EE27F74A333CB74E5EFE361A17E03B745FFD53E12D5B0CA5E0DD<br />07BF2B7130DFC606A2885758CB7ADBC85E817B490BEF516B662<br />5DED11DF3AEE215B8BAF8073C345E3958977609BE 7AD77C1<br />378D33142F13DB62C9AE1AA94F9867ADD420393071E08D6746E2C61CF40D5074412FE8052<br /> 46A216B49B092C4B239C742A56D5C184AAB8FD78E833E780A47D8A4B28423C3E2F27B66B14A74B<br /> D26414B9C6114604E30C882F3D00B707CEE554D77D2085576810203010001 (REMOVE LINE BREAKS!)</li>
<li>Find the element for &lt; PackageFile Name="dotNetFX30\XPSEPSC-amd64-en-US.exe" and change the PublicKey value to the same as in step 4 above </li>
<li>Save the product.xml file </li>
</ol> Download and Extract the Core Installation Files     <ol>
<li>Navigate to the following URL: http://go.microsoft.com/fwlink?LinkID=118080 </li>
<li>Download the dotNetFx35.exe file to your local disk. </li>
<li>Open a Command Prompt window and change to the directory to which you downloaded dotNetFx35.exe. </li>
<li>At the command prompt, type:        <br />dotNetFx35.exe /x:.         <br />This will extract the Framework files to a folder named &ldquo;WCU&rdquo; in the current directory. </li>
<li>Copy the contents of the WCU\dotNetFramework folder and paste them in the %Program Files%\Microsoft SDKs\Windows\v6.0A\Bootstrapper\Packages\DotNetFx35SP1 folder (%ProgramFiles(x86)%\Microsoft SDKs\Windows\v6.0A\Bootstrapper\Packages\DotNetFx35SP1 on x64 operating systems). Note: Do not copy the WCU\dotNetFramework folder itself. There should be 5 folders under the WCU folder, and each of these should now appear in the DotNetFx35SP1 folder. The folder structure should resemble the following:        <br />o DotNetFx35SP1 (folder)                   
<ul>
<li>dotNetFX20 (folder </li>
<li>dotNetFX30 (folder) </li>
<li>dotNetFX35 (folder) </li>
<li>dotNetMSP (folder) </li>
<li>TOOLS folder) </li>
<li>en (or some other localized folder) </li>
<li>dotNetFx35setup.exe (file)            <br />You may now delete the files and folders you downloaded and extracted in steps 2 and 4. </li>
</ul>
</li>
</ol></blockquote>