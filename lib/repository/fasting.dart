import 'package:drift/drift.dart';

class Fasting extends Table {
  // 1. ID
  IntColumn get id => integer().autoIncrement()();

  // 2. 단식 플랜
  TextColumn get plan => text()();

  // 3. 플랜 시작시간
  DateTimeColumn get start => dateTime()();

  // 4. 플랜 종료시간
  DateTimeColumn get end => dateTime()();

  // 5. 플랜 중지 시간
  DateTimeColumn get stop => dateTime().nullable()();

  // 6. 단식 상태
  TextColumn get status => text()();

  // 7. 기분 커멘트
  TextColumn get comment => text().nullable()();

  // 8. 생성시간
  DateTimeColumn get createdAt =>
      dateTime().clientDefault(() => DateTime.now().toUtc())();
}
