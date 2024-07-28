import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../layout/default_layout.dart';

class CircularScreen extends StatelessWidget {
  const CircularScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: "/circular",
      body: Center(
        child: ListView(
          children: [
            CircularPercentIndicator(
              radius: 100.0,
              lineWidth: 10.0,
              percent: 0.8,
              header: new Text("Icon header"),
              center: new Icon(
                Icons.person_pin,
                size: 50.0,
                color: Colors.blue,
              ),
              backgroundColor: Colors.grey,
              progressColor: Colors.blue,
            ),
            CircularPercentIndicator(
              radius: 130.0,
              animation: true,
              animationDuration: 1200,
              lineWidth: 15.0,
              percent: 0.4,
              center: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  new Text(
                    "40 hours",
                    style: new TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  new Text(
                    "15%",
                    style: new TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                ],
              ),
              circularStrokeCap: CircularStrokeCap.butt,
              backgroundColor: Colors.grey,
              progressColor: Colors.yellow,
            ),
            CircularPercentIndicator(
              radius: 110.0,
              lineWidth: 13.0,
              animation: true,
              percent: 0.7,
              center: new Text(
                "70.0%",
                style:
                    new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              footer: new Text(
                "Sales this week",
                style:
                    new TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
              ),
              circularStrokeCap: CircularStrokeCap.round,
              progressColor: Colors.purple,
            ),
            CircularPercentIndicator(
              radius: 200.0,
              lineWidth: 13.0,
              percent: 0.0, // 현재 진행률
              center: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("ELAPSED TIME"),
                  Text(
                    "00:01:06",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text("REMAINING"),
                  Text("15:58:53", style: TextStyle(fontSize: 24)),
                ],
              ),
              progressColor: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
