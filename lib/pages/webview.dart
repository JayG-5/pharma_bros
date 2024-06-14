import 'package:flutter/material.dart';
import 'package:pharmabros/styles/style.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatefulWidget {
  const WebViewPage({super.key, required this.url, required this.title});

  final String url;
  final String title;

  @override
  State<WebViewPage> createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  late final WebViewController _controller;

  @override
  void initState() {
    final WebViewController controller =
        WebViewController.fromPlatformCreationParams(
            const PlatformWebViewControllerCreationParams());

    controller
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(Colors.white)
      ..addJavaScriptChannel(
        'Toaster',
        onMessageReceived: (JavaScriptMessage message) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(message.message)),
          );
        },
      )
      ..loadRequest(Uri.parse(widget.url));
    _controller = controller;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: AppStyle.typography.heading3,
        ),
      ),
      body: WebViewWidget(
        controller: _controller,
      ),
    );
  }
}
