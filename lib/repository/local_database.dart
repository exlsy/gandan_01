import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:gandan_01/repository/fasting.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:sqlite3/sqlite3.dart';
import 'package:sqlite3_flutter_libs/sqlite3_flutter_libs.dart';

part 'local_database.g.dart';

@DriftDatabase(tables: [Fasting])
class LocalDatabase extends _$LocalDatabase {
  LocalDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  // Future<List<FastingData>> getFastings() async {
  //   return (select(fasting)..orderBy([(t) => OrderingTerm.desc(t.id)])).get();
  // }
  //
  // Future<int> createFasting(FastingCompanion data) async {
  //   return into(fasting).insert(data);
  // }
  //
  // Future<int> removeFasting(int id) async {
  //   return (delete(fasting)..where((t) => t.id.equals(id))).go();
  // }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, "db.sqlite"));

    if (Platform.isAndroid) {
      await applyWorkaroundToOpenSqlite3OnOldAndroidVersions();
    }

    final cachebase = await getTemporaryDirectory();
    sqlite3.tempDirectory = cachebase.path;

    return NativeDatabase.createInBackground(file);
  });
}
