import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gandan_01/model/fasting_model.dart';
import 'package:gandan_01/repository/local_database.dart';

final databaseProver = Provider<LocalDatabase>((ref) => LocalDatabase());

final fastingModelProvider =
    StateNotifierProvider<FastingNotifier, List<FastingModel>>(
        (ref) => FastingNotifier(database: ref.watch(databaseProver)));

class FastingNotifier extends StateNotifier<List<FastingModel>> {
  final LocalDatabase database;
  FastingNotifier({required this.database}) : super([]);

  Future<void> getFastings() async {
    final fastings = await (database.select(database.fasting)
          ..orderBy([(t) => OrderingTerm.desc(t.id)]))
        .get();

    state = fastings
        .map(
          (f) => FastingModel(
              id: f.id,
              start: f.start,
              end: f.end,
              stop: f.stop,
              status: f.status,
              comment: f.comment,
              createdAt: f.createdAt),
        )
        .toList();
  }

  Future<void> createFasting(FastingCompanion data) async {
    database.into(database.fasting).insert(data);
    getFastings();
  }

  Future<void> removeFasting(int id) async {
    (database.delete(database.fasting)..where((t) => t.id.equals(id))).go();
    getFastings();
  }
}
