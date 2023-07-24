import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WebView App',
      theme: ThemeData(
        primarySwatch:  Colors.orange,
      ),
      home: WebViewScreen(),
    );
  }
}

class WebViewScreen extends StatefulWidget {
  @override
  _WebViewScreenState createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(5), // Şeffaf TabBar'ın yüksekliği
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0, // AppBar'ın gölgesini kaldırır
        ),
      ),
      body: WebView(
        initialUrl: 'https://vipelan.az',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}