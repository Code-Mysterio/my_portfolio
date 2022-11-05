import 'package:flutter/material.dart';

class AboutMePage extends StatefulWidget {
  const AboutMePage({Key? key}) : super(key: key);

  @override
  State<AboutMePage> createState() => _AboutMePageState();
}

class _AboutMePageState extends State<AboutMePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.amber,
            icon: const Icon(
              Icons.arrow_back_ios,
            ),
          ),
          title: const Text('About Me'),
          backgroundColor: Colors.black,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Hi there, lets get to know me',
                style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'Build and boost your mobile applications with me.',
                style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                '''Hello World!\nI'm Abdullateef Sarafadeen, a mobile developer who works with the Flutter framework to build awesome Android and iOS apps.

Over the past three months, I have been practising with Flutter to build personal projects for my portfolio. I have gained knowledge and experience about widgets and widget trees, state lifecycles, streams, Firebase for Flutter, using APIs, etc.

I will be the perfect fit for building your mobile app or maintaining your existing codebase with Flutter.

I look forward to creating an awesome and amazing experience with you using Flutter.''',
                style: TextStyle(fontSize: 18, height: 1.5),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
