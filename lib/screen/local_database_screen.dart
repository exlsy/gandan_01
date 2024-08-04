import 'package:drift/drift.dart' hide Column;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../const/color.dart';
import '../layout/default_layout.dart';
import '../repository/fasting_repository.dart';
import '../repository/local_database.dart';

class LocalDatabaseScreen extends ConsumerWidget {
  const LocalDatabaseScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fastings = ref.watch(fastingModelProvider);

    return DefaultLayout(
      title: "/localdb",
      floatingActionButton: FloatingActionButton(
        foregroundColor: primaryColor,
        backgroundColor: Colors.white,
        onPressed: () {
          ref.read(fastingModelProvider.notifier).createFasting(
                FastingCompanion(
                  plan: Value('userinput'),
                  start: Value(DateTime.parse('20240803 220000')),
                  end: Value(DateTime.parse('20240804 180000')),
                  // stop: Value(null),
                  status: Value('started'),
                  // comment: Value(''),
                ),
              );
        },
        child: const Icon(
          Icons.add,
        ),
        shape: const CircleBorder(
          side: BorderSide(
            width: 3.0,
            color: Colors.blue,
          ),
        ),
      ),
      body: Column(
        children: [
          ElevatedButton(
            child: const Text('Fetch Data'),
            onPressed: () {
              ref.read(fastingModelProvider.notifier).getFastings();
            },
          ),
          Expanded(
            child: ListView.builder(
              itemCount: fastings.length,
              itemBuilder: (context, index) {
                final fasting = fastings[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Colors.orange,
                      ),
                    ),
                    padding: const EdgeInsets.all(8.0),
                    child: Text('${fasting.toString()} '),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
