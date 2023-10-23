import 'package:flutter/material.dart';

class BasePage extends StatelessWidget {
  const BasePage({super.key, required this.title, required this.body});
  final String title;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        shadowColor: Colors.transparent,
      ),
      body: body,
    );
  }
}
