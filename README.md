# Cordova iOS LongPress Fix Plugin
by [Eddy Verbruggen](http://twitter.com/eddyverbruggen) / [Telerik](http://www.telerik.com)

## Description

Apple thought it'd be nice if it would show a magnifying glass when we longpress our webview on iOS9.

Don't like it? This plugin removes it!

<img src="screenshots/magnifying-glass.png" width="375px" height="333px"/>


## Installation

Cordova CLI
```
$ cordova plugin add cordova-plugin-ios-longpress-fix
```

PhoneGap Build
```xml
<gap:plugin id="cordova-plugin-ios-longpress-fix" source="npm" />
```

## Usage
It just works, and will proudly shout that at the XCode console when it does.


## Limitations
Currently only works with UIWebView, not WKWebView.
Open a ticket if you need that.