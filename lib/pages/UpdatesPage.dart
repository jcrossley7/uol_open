import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
class UpdatesPage extends StatelessWidget {
  WebViewController _controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("UoL Twitter - Get Involved!"),
        ),
        backgroundColor: (Color(0x00000000)),
        body:
        new Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("lib/assets/images/cathedral2.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child:WebView(
            initialUrl: 'https://m.twitter.com/unilincoln',
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (WebViewController webViewController) {
              _controller = webViewController;
            },
          ),
        )
    );
  }
}