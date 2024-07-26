import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gandan_01/layout/default_layout.dart';

class CountdownTimerScreen extends StatefulWidget {
  const CountdownTimerScreen({super.key});

  @override
  State<CountdownTimerScreen> createState() => _CountdownTimerScreenState();
}

class _CountdownTimerScreenState extends State<CountdownTimerScreen> {
  static const countdownDuration = Duration(minutes: 10);
  Duration duration = Duration();
  Timer? timer;

  bool isCountdown = true;

  @override
  void initState() {
    super.initState();

    // startTimer();
    reset();
  }

  void reset() {
    setState(() {
      if (isCountdown) {
        duration = countdownDuration;
      } else {
        duration = Duration();
      }
    });
  }

  void addTime() {
    final addSeconds = isCountdown ? -1 : 1;

    setState(() {
      final seconds = duration.inSeconds + addSeconds;

      if (seconds < 0) {
        timer?.cancel();
      } else {
        duration = Duration(seconds: seconds);
      }
    });
  }

  void startTimer({bool resets = true}) {
    if (resets) {
      reset();
    }

    timer = Timer.periodic(
      Duration(seconds: 1),
      (_) => addTime(),
    );
  }

  void stopTimer({bool resets = true}) {
    if (resets) {
      reset();
    }

    setState(() {
      timer?.cancel();
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: '/countdown',
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildTime(),
          SizedBox(
            height: 80,
          ),
          buildButtons(),
        ],
      ),
    );
  }

  Widget buildTime() {
    // 9 -> 09
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = twoDigits(duration.inHours);
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));

    // return Text(
    //   '${minutes}:${seconds}',
    //   style: TextStyle(fontSize: 40),
    // );

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildTimeCard(time: hours, header: 'HOURS'),
        SizedBox(
          width: 8,
        ),
        buildTimeCard(time: minutes, header: 'MINUTES'),
        SizedBox(
          width: 8,
        ),
        buildTimeCard(time: seconds, header: 'SECONDS'),
      ],
    );
  }

  Widget buildTimeCard({
    required String time,
    required String header,
  }) =>
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(
              8.0,
            ),
            decoration: BoxDecoration(
              color: Colors.greenAccent,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              time,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 45,
              ),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Text(header),
        ],
      );

  Widget buildButtons() {
    final isRunning = timer == null ? false : timer!.isActive;
    final isCompleted =
        (duration == countdownDuration || duration.inSeconds == 0);

    print('isRunning $isRunning');
    print('isCompleted $isCompleted');

    return isRunning || !isCompleted
        ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Text(isRunning ? 'STOP' : 'RESUME'),
                style: ElevatedButton.styleFrom(),
                onPressed: () {
                  if (isRunning) {
                    stopTimer(resets: false);
                  } else {
                    startTimer(resets: false);
                  }
                },
              ),
              SizedBox(
                width: 12,
              ),
              ElevatedButton(
                child: Text('CANCEL'),
                style: ElevatedButton.styleFrom(),
                onPressed: stopTimer,
              ),
            ],
          )
        : ElevatedButton(
            child: Text('Start Timer'),
            style: ElevatedButton.styleFrom(),
            onPressed: () {
              startTimer();
            },
          );
  }
}
