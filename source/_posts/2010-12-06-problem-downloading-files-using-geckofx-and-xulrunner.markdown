---
layout: post
title: "Problem Downloading files using GeckoFX and XULRunner"
date: 2010-12-06 07:50:04
comments: true
categories: 
---

<p><a title="GeckoFX Homepage" href="http://geckofx.org/">GeckoFX</a> is a component to reduce the complexity of embedding Firefox (XULRunner)onto a Windows Forms application to replace the default WebBrowser control.</p>  <p>But while trying to download a file though it, I have encountered this error : </p>  <div style="padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; display: inline; float: none; padding-top: 0px" id="scid:57F11A72-B0E5-49c7-9094-E3A15BD5B5E6:9f3b8763-e6ca-4e78-81bd-7da63413577c" class="wlWriterEditableSmartContent"><pre style="background-color:White;overflow: auto;"><span style="color: #000000;">XML Parsing Error: undefined entity
Location: chrome://mozapps/content/downloads/unknownContentType.xul
Line Number </span><span style="color: #000000;">30</span><span style="color: #000000;">,</span><span style="color: #000000;"> Column </span><span style="color: #000000;">18</span><span style="color: #000000;">:    &lt;description&gt;&amp;intro.label</span><span style="color: #008000;">;</span><span style="color: #008000;">&lt;/description</span></pre><!-- Code inserted with Steve Dunn's Windows Live Writer Code Formatter Plugin.  http://dunnhq.com --></div>

<p>After a lot of googling I have managed to resolve this issue. This is what I have done : </p>

<h3>1. Use XULRunner 1.9.0.4 or newer</h3>

<p>If you’ve followed some tutorials you may have ended up using 1.9.0.0. Use <a title="XULRunner 1.9.0.4 download location" href="ftp://ftp.mozilla.org/pub/xulrunner/releases/1.9.0.4/runtimes/xulrunner-1.9.0.4.en-US.win32.zip">1.9.0.4</a></p>

<h3>2. Use the Profile Directory</h3>

<div style="padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; display: inline; float: none; padding-top: 0px" id="scid:57F11A72-B0E5-49c7-9094-E3A15BD5B5E6:eab0600a-7232-4ad0-afbf-b7e03b970933" class="wlWriterEditableSmartContent"><pre style="background-color:#FFFFFF;overflow: auto;"><span style="color: #000000;">var profileDirectory </span><span style="color: #000000;">=</span><span style="color: #000000;"> Application.StartupPath </span><span style="color: #000000;">+</span><span style="color: #000000;"> </span><span style="color: #800000;">@"</span><span style="color: #800000;">\EmbeddedFirefoxProfile</span><span style="color: #800000;">"</span><span style="color: #000000;">;
</span><span style="color: #0000FF;">if</span><span style="color: #000000;"> (</span><span style="color: #000000;">!</span><span style="color: #000000;">Directory.Exists(profileDirectory))
{
    Directory.CreateDirectory(profileDirectory);
}
Skybound.Gecko.Xpcom.ProfileDirectory </span><span style="color: #000000;">=</span><span style="color: #000000;"> profileDirectory;</span></pre><!-- Code inserted with Steve Dunn's Windows Live Writer Code Formatter Plugin.  http://dunnhq.com --></div>

<h3>3. Copy the chrome folder from the GeckoFX package into the chrome directory of XULRunner.</h3>

<p>This will add 2 files to the existing chrome folder.</p>

<h3>4. Add a bunch of preferences to greprefs/all.js</h3>

<div style="padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; display: inline; float: none; padding-top: 0px" id="scid:DFDE9937-D816-47f4-A306-7B60D5CE5AC0:b65e1539-3745-4255-a994-a429d654c4ee" class="wlWriterEditableSmartContent"><pre class="brush: jscript; gutter: false; first-line: 1; tab-size: 4;  toolbar: true; ">pref(&quot;browser.download.useDownloadDir&quot;, true);
pref(&quot;browser.download.folderList&quot;, 0);
pref(&quot;browser.download.manager.showAlertOnComplete&quot;, true);
pref(&quot;browser.download.manager.showAlertInterval&quot;, 2000);
pref(&quot;browser.download.manager.retention&quot;, 2);
pref(&quot;browser.download.manager.showWhenStarting&quot;, true);
pref(&quot;browser.download.manager.useWindow&quot;, true);
pref(&quot;browser.download.manager.closeWhenDone&quot;, true);
pref(&quot;browser.download.manager.openDelay&quot;, 0);
pref(&quot;browser.download.manager.focusWhenStarting&quot;, false);
pref(&quot;browser.download.manager.flashCount&quot;, 2);
//
pref(&quot;alerts.slideIncrement&quot;, 1);
pref(&quot;alerts.slideIncrementTime&quot;, 10);
pref(&quot;alerts.totalOpenTime&quot;, 4000);
pref(&quot;alerts.height&quot;, 50);</pre><!-- Code inserted with Steve Dunn's Windows Live Writer Code Formatter Plugin.  http://dunnhq.com --></div>

<h3>Conclusion</h3>

<p>I hope it works for you. Happy GeckoFX programming!</p>