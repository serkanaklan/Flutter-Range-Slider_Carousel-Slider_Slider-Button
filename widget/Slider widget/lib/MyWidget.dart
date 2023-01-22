import 'package:flutter/material.dart';
import 'package:flutter_balloon_slider/flutter_balloon_slider.dart';
import 'package:slider_button/slider_button.dart';

import 'CarouselSldier.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  double ActiveCurrent = 1;
  double StartValue = 10;
  double endValue = 70;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider widget usage"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BalloonSlider(
                value: 0.9,
                ropeLength: 55,
                showRope: true,
                onChangeStart: (data) {},
                onChanged: (data) {},
                onChangeEnd: (data) {},
                color: Color.fromARGB(255, 83, 152, 140)),
            SizedBox(
              height: 20,
            ),
            Slider(
              value: ActiveCurrent,
              divisions: 30,
              max: 30,
              min: 0,
              onChanged: (value) {
                setState(() {
                  ActiveCurrent = value;
                });
              },
              onChangeStart: (value) {},
              onChangeEnd: (value) {},
              label: ActiveCurrent.round().toString(),
            ),
            const SizedBox(
              height: 30,
            ),
            SliderButton(
              action: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Carousel_Slider(),
                    ));
              },
              label: const Text(
                "Slider button ",
                style: TextStyle(
                    color: Color(0xff4a4a4a),
                    fontWeight: FontWeight.w500,
                    fontSize: 17),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            RangeSlider(
                activeColor: Colors.blue.shade100,
                inactiveColor: Colors.red.shade600,
                min: 10,
                max: 70,
                divisions: 60,
                values: RangeValues(StartValue, endValue),
                onChanged: (value) {
                  setState(() {
                    StartValue = value.start;
                    endValue = value.end;
                  });
                }),
          ],
        ),
      ),
    );
  }
}
// (new) Slider Slider({
//   Key? key,
//   required double value,
//   required void Function(double)? onChanged,
//   void Function(double)? onChangeStart,
//   void Function(double)? onChangeEnd,
//   double min = 0.0,
//   double max = 1.0,
//   int? divisions,
//   String? label,
//   Color? activeColor,
//   Color? inactiveColor,
//   Color? thumbColor,