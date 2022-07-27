// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MobileBody extends StatelessWidget {
  const MobileBody({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text(title),
      ),
    );
  }
}
