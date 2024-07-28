import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DefaultLayout extends StatelessWidget {
  final String title;
  final Widget body;
  FloatingActionButton? floatingActionButton;

  DefaultLayout({
    required this.title,
    this.floatingActionButton,
    required this.body,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              context.push('/settings');
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      floatingActionButton: floatingActionButton,
      body: Padding(
        padding: EdgeInsets.all(
          8.0,
        ),
        child: body,
      ),
    );
  }
}
