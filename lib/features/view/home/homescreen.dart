
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: WebView(
          initialUrl: 'https://reachymart.com/',
          javascriptMode: JavascriptMode.unrestricted,
        )
        ),
    );
  }
}