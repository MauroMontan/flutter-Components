import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 10;
  bool _enableSlider = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sliders"),
      ),
      body: Column(
        children: [
          Slider(
              value: _sliderValue,
              min: 0,
              max: 500,
              onChanged: _enableSlider
                  ? (value) {
                      _sliderValue = value;
                      print(value);
                      setState(() {});
                    }
                  : null),
          CheckboxListTile(
              title: const Text("deshabilitar slider"),
              value: _enableSlider,
              onChanged: (bool? value) {
                _enableSlider = value ?? true;

                setState(() {});
              }),
          CupertinoSwitch(
              value: _enableSlider,
              onChanged: (value) {
                _enableSlider = value;

                setState(() {});
              }),
          const AboutListTile(),
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage(
                    "https://static.wikia.nocookie.net/manga/images/5/50/Roronoa_Zoro.png/revision/latest/scale-to-width-down/200?cb=20150607233700&path-prefix=es"),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          )
        ],
      ),
    );
  }
}
