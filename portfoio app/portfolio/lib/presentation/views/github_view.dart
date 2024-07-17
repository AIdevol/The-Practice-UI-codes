import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:portfolio/services/auth/url_links.dart';

class GithubView extends StatelessWidget {
  const GithubView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My GitHub Profile'),
      ),
      body: FutureBuilder<WebViewController>(
        future: _initializeWebViewController(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData) {
              return WebViewWidget(controller: snapshot.data!);
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else {
              return const Center(child: Text('Something went wrong'));
            }
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }

  Future<WebViewController> _initializeWebViewController() async {
    final controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onWebResourceError: (WebResourceError error) {
            print('WebView error: ${error.description}');
          },
        ),
      )
      ..loadRequest(Uri.parse(githubLink));

    return controller;
  }
}
