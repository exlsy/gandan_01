import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

import '../layout/default_layout.dart';

class WaveScreen extends StatelessWidget {
  const WaveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: "/wave",
      body: Center(
        child: Column(
          children: [
            // ClipRRect(
            //   borderRadius: BorderRadius.circular(8.0),
            //   child: WaveWidget(
            //     config: CustomConfig(
            //       colors: _colors,
            //       durations: _durations,
            //       heightPercentages: _heightPercentages,
            //     ),
            //     backgroundColor: _backgroundColor,
            //     size: Size(double.infinity, double.infinity),
            //     waveAmplitude: 0.5,
            //   ),
            // ),
            Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
                // boxShadow: [
                //   BoxShadow(
                //     color: Color(0xFF9B5DE5),
                //     blurRadius: 2.0,
                //     spreadRadius: -5.0,
                //     offset: Offset(0.0, 8.0),
                //   ),
                // ],
                // borderRadius: BorderRadius.circular(6.0),
                border: Border.all(
                  color: Colors.blueAccent,
                  width: 2.0,
                ),
              ),
              width: 100.0,
              height: 100.0,
              child: ClipOval(
                child: WaveWidget(
                  config: CustomConfig(
                    colors: _colors,
                    durations: _durations,
                    heightPercentages: _heightPercentages,
                  ),
                  backgroundColor: _backgroundColor,
                  size: Size(double.infinity, double.infinity),
                  // size: Size(80, 80),
                  waveAmplitude: 0.1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static const _backgroundColor = Colors.white;

  static const _colors = [
    Color(0xFFFEE440),
    Color(0xFF00BBF9),
  ];

  static const _durations = [
    15000,
    9000,
  ];

  static const _heightPercentages = [
    0.59,
    0.66,
  ];
}
