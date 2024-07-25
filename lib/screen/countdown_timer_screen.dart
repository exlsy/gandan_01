import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gandan_01/layout/default_layout.dart';

class CountdownTimerScreen extends StatefulWidget {
  const CountdownTimerScreen({super.key});

  @override
  State<CountdownTimerScreen> createState() => _CountdownTimerScreenState();
}

class _CountdownTimerScreenState extends State<CountdownTimerScreen> {
  Duration duration = Duration();
  Timer? timer;

  @override
  void initState() {
    super.initState();

    startTimer();
  }

  void addTime() {
    final addSeconds = 1;

    setState(() {
      final seconds = duration.inSeconds + addSeconds;

      duration = Duration(seconds: seconds);
    });
  }

  void startTimer() {
    timer = Timer.periodic(
      Duration(seconds: 1),
      (_) => addTime(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: '/countdown',
      body: Center(child: buildTime()),
    );
  }

  Widget buildTime() {
    return Text(
      '${duration.inSeconds}',
      style: TextStyle(fontSize: 40),
    );
  }
}
