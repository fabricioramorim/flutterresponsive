import 'package:converte_art/responsive/desktopBody.dart';
import 'package:converte_art/responsive/layout.dart';
import 'package:converte_art/responsive/mobileBody.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Converte.art',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ConverteArt(title: 'Converte.art'),
    );
  }
}


class ConverteArt extends StatefulWidget {
  const ConverteArt({Key? key, required this.title }) : super(key: key);
 
  final String title;

  @override
  State<ConverteArt> createState() => _ConverteArtState();
}

class _ConverteArtState extends State<ConverteArt> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ResponsiveLayout(mobileBody: MobileBody(title: widget.title), desktopBody: DesktopBody(title: widget.title)),
    );
  }
}