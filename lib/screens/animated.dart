import 'dart:math' show Random;

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  _AnimatedScreenState createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.indigo;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);

  void changeShape() {
    final rand = Random();
    _color = Color.fromRGBO(
        rand.nextInt(255), rand.nextInt(255), rand.nextInt(255), 1);
    _height = rand.nextInt(300).toDouble() + 7;
    _width = rand.nextInt(250).toDouble();
    _borderRadius = BorderRadius.circular(rand.nextInt(100).toDouble());
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            changeShape();
          },
          child: const Icon(Icons.play_arrow),
          elevation: 0,
        ),
        appBar: AppBar(),
        body: Center(
          child: AnimatedContainer(
            curve: Curves.easeOutCubic,
            duration: const Duration(milliseconds: 400),
            width: _width,
            height: _height,
            decoration:
                BoxDecoration(color: _color, borderRadius: _borderRadius),
          ),
        ));
  }
}
