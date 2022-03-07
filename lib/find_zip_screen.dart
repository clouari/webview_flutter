import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class FindZipScreen extends StatefulWidget {
  const FindZipScreen({Key? key}) : super(key: key);

  @override
  State<FindZipScreen> createState() => _FindZipScreenState();
}

class _FindZipScreenState extends State<FindZipScreen> {
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('우편번호 검색'),
      ),
      body: const WebView(
        initialUrl: 'http://127.0.0.1:5500/index.html',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
