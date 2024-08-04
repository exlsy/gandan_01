import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gandan_01/route/route.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initializeDateFormatting();

  // debugPaintSizeEnabled = true;
  // final database = LocalDatabase();

  // int id = await database.createFasting(
  //   FastingCompanion(
  //     plan: Value('userinput'),
  //     start: Value(DateTime.parse('20240803 220000')),
  //     end: Value(DateTime.parse('20240804 180000')),
  //     // stop: Value(null),
  //     status: Value('started'),
  //     // comment: Value(''),
  //   ),
  // );

  // print('insert id ${id}');
  // final resp = await database.getFastings();
  // print(resp);
  //
  // await database.removeFasting(1);
  // await database.removeFasting(id);

  // print(resp);

  runApp(
    ProviderScope(
      child: _App(),
    ),
  );
}

class _App extends StatelessWidget {
  const _App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        fontFamily: 'NotoSans',
      ),
      routerConfig: router,
    );
  }
}
