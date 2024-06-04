import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<void> _launchUrl(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Url Launcher Demo"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
              onTap: () {
                _launchUrl("tel: +919099376525");
              },
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Center(child: Text("Call")),
              )),
          InkWell(
              onTap: () {
                _launchUrl("sms: +919099376525");
              },
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Center(child: Text("SMS")),
              )),
          InkWell(
              onTap: () {
                _launchUrl(
                    "mailto:vitulgoyani@gmail.com?subject=Url Lunacher Plugin &body=Test Email body");
              },
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Center(child: Text("Mail")),
              )),
          InkWell(
              onTap: () {
                _launchUrl(
                    "https://www.linkedin.com/in/vitul-goyani-6543391b/");
              },
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Center(child: Text("Linkedin")),
              )),
        ],
      ),
    );
  }
}
