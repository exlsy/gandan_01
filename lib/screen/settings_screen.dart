import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('설정'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              context.go('/');
            },
            icon: Icon(Icons.home),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(
          8.0,
        ),
        child: Center(
          child: Text('settings'),
        ),
      ),
    );
  }
}
