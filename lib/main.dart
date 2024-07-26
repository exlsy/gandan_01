import 'package:flutter/material.dart';
import 'package:gandan_01/route/route.dart';

void main() {
  // debugPaintSizeEnabled = true;
  runApp(
    _App(),
  );
}

class _App extends StatelessWidget {
  const _App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Circular Percent Indicators"),
//       ),
//       body: Center(
//         child: ListView(
//           children: [
//             CircularPercentIndicator(
//               radius: 100.0,
//               lineWidth: 10.0,
//               percent: 0.8,
//               header: new Text("Icon header"),
//               center: new Icon(
//                 Icons.person_pin,
//                 size: 50.0,
//                 color: Colors.blue,
//               ),
//               backgroundColor: Colors.grey,
//               progressColor: Colors.blue,
//             ),
//             CircularPercentIndicator(
//               radius: 130.0,
//               animation: true,
//               animationDuration: 1200,
//               lineWidth: 15.0,
//               percent: 0.4,
//               center: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   new Text(
//                     "40 hours",
//                     style: new TextStyle(
//                         fontWeight: FontWeight.bold, fontSize: 20.0),
//                   ),
//                   new Text(
//                     "15%",
//                     style: new TextStyle(
//                         fontWeight: FontWeight.bold, fontSize: 20.0),
//                   ),
//                 ],
//               ),
//               circularStrokeCap: CircularStrokeCap.butt,
//               backgroundColor: Colors.grey,
//               progressColor: Colors.yellow,
//             ),
//             new CircularPercentIndicator(
//               radius: 110.0,
//               lineWidth: 13.0,
//               animation: true,
//               percent: 0.7,
//               center: new Text(
//                 "70.0%",
//                 style:
//                     new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
//               ),
//               footer: new Text(
//                 "Sales this week",
//                 style:
//                     new TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
//               ),
//               circularStrokeCap: CircularStrokeCap.round,
//               progressColor: Colors.purple,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
