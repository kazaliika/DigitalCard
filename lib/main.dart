import 'package:flutter/material.dart';
import 'package:digitalcard/layoutRotation/layout_Potrait.dart';
import 'package:digitalcard/layoutRotation/layout_Landscape.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Digital Card",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color(0xFF0E46A3),
          centerTitle: true,
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 238, 239, 241),
                Color.fromARGB(255, 170, 193, 240),
              ],
            ),
          ),
          child: LayoutBuilder(
            builder: (BuildContext context, constraints) {
              if (constraints.maxWidth < 600) {
                // POTRAIT LAYOUT
                return layoutPotrait(width: constraints.maxWidth);
              } else {
                // LANDSCAPE LAYOUT
                return layoutLandscape(width: constraints.maxWidth);
              }
            },
          ),
        ),
      ),
    );
  }
}
