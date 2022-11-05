import 'package:code_mysterio_portfolio/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CodeMysterioPortfolio());
}

class CodeMysterioPortfolio extends StatelessWidget {
  const CodeMysterioPortfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: 'Ubuntu'), home: const SplashScreen());
  }
}
