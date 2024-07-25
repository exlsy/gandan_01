import 'package:flutter/material.dart';
import 'package:gandan_01/layout/default_layout.dart';
import 'package:go_router/go_router.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
        title: "/",
        body: ListView(
          children: [
            ElevatedButton(
              onPressed: () {
                context.go('/circular');
              },
              child: Text('Go Circular'),
            ),
            ElevatedButton(
              onPressed: () {
                context.go('/countdown');
              },
              child: Text('Go CountdownTimer'),
            ),
          ],
        ));
  }
}
