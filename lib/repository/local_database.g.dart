// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_database.dart';

// ignore_for_file: type=lint
class $FastingTable extends Fasting with TableInfo<$FastingTable, FastingData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FastingTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _planMeta = const VerificationMeta('plan');
  @override
  late final GeneratedColumn<String> plan = GeneratedColumn<String>(
      'plan', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _startMeta = const VerificationMeta('start');
  @override
  late final GeneratedColumn<DateTime> start = GeneratedColumn<DateTime>(
      'start', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _endMeta = const VerificationMeta('end');
  @override
  late final GeneratedColumn<DateTime> end = GeneratedColumn<DateTime>(
      'end', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _stopMeta = const VerificationMeta('stop');
  @override
  late final GeneratedColumn<DateTime> stop = GeneratedColumn<DateTime>(
      'stop', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
      'status', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _commentMeta =
      const VerificationMeta('comment');
  @override
  late final GeneratedColumn<String> comment = GeneratedColumn<String>(
      'comment', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      clientDefault: () => DateTime.now().toUtc());
  @override
  List<GeneratedColumn> get $columns =>
      [id, plan, start, end, stop, status, comment, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'fasting';
  @override
  VerificationContext validateIntegrity(Insertable<FastingData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('plan')) {
      context.handle(
          _planMeta, plan.isAcceptableOrUnknown(data['plan']!, _planMeta));
    } else if (isInserting) {
      context.missing(_planMeta);
    }
    if (data.containsKey('start')) {
      context.handle(
          _startMeta, start.isAcceptableOrUnknown(data['start']!, _startMeta));
    } else if (isInserting) {
      context.missing(_startMeta);
    }
    if (data.containsKey('end')) {
      context.handle(
          _endMeta, end.isAcceptableOrUnknown(data['end']!, _endMeta));
    } else if (isInserting) {
      context.missing(_endMeta);
    }
    if (data.containsKey('stop')) {
      context.handle(
          _stopMeta, stop.isAcceptableOrUnknown(data['stop']!, _stopMeta));
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    } else if (isInserting) {
      context.missing(_statusMeta);
    }
    if (data.containsKey('comment')) {
      context.handle(_commentMeta,
          comment.isAcceptableOrUnknown(data['comment']!, _commentMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FastingData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FastingData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      plan: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}plan'])!,
      start: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}start'])!,
      end: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}end'])!,
      stop: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}stop']),
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}status'])!,
      comment: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}comment']),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $FastingTable createAlias(String alias) {
    return $FastingTable(attachedDatabase, alias);
  }
}

class FastingData extends DataClass implements Insertable<FastingData> {
  final int id;
  final String plan;
  final DateTime start;
  final DateTime end;
  final DateTime? stop;
  final String status;
  final String? comment;
  final DateTime createdAt;
  const FastingData(
      {required this.id,
      required this.plan,
      required this.start,
      required this.end,
      this.stop,
      required this.status,
      this.comment,
      required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['plan'] = Variable<String>(plan);
    map['start'] = Variable<DateTime>(start);
    map['end'] = Variable<DateTime>(end);
    if (!nullToAbsent || stop != null) {
      map['stop'] = Variable<DateTime>(stop);
    }
    map['status'] = Variable<String>(status);
    if (!nullToAbsent || comment != null) {
      map['comment'] = Variable<String>(comment);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  FastingCompanion toCompanion(bool nullToAbsent) {
    return FastingCompanion(
      id: Value(id),
      plan: Value(plan),
      start: Value(start),
      end: Value(end),
      stop: stop == null && nullToAbsent ? const Value.absent() : Value(stop),
      status: Value(status),
      comment: comment == null && nullToAbsent
          ? const Value.absent()
          : Value(comment),
      createdAt: Value(createdAt),
    );
  }

  factory FastingData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FastingData(
      id: serializer.fromJson<int>(json['id']),
      plan: serializer.fromJson<String>(json['plan']),
      start: serializer.fromJson<DateTime>(json['start']),
      end: serializer.fromJson<DateTime>(json['end']),
      stop: serializer.fromJson<DateTime?>(json['stop']),
      status: serializer.fromJson<String>(json['status']),
      comment: serializer.fromJson<String?>(json['comment']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'plan': serializer.toJson<String>(plan),
      'start': serializer.toJson<DateTime>(start),
      'end': serializer.toJson<DateTime>(end),
      'stop': serializer.toJson<DateTime?>(stop),
      'status': serializer.toJson<String>(status),
      'comment': serializer.toJson<String?>(comment),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  FastingData copyWith(
          {int? id,
          String? plan,
          DateTime? start,
          DateTime? end,
          Value<DateTime?> stop = const Value.absent(),
          String? status,
          Value<String?> comment = const Value.absent(),
          DateTime? createdAt}) =>
      FastingData(
        id: id ?? this.id,
        plan: plan ?? this.plan,
        start: start ?? this.start,
        end: end ?? this.end,
        stop: stop.present ? stop.value : this.stop,
        status: status ?? this.status,
        comment: comment.present ? comment.value : this.comment,
        createdAt: createdAt ?? this.createdAt,
      );
  FastingData copyWithCompanion(FastingCompanion data) {
    return FastingData(
      id: data.id.present ? data.id.value : this.id,
      plan: data.plan.present ? data.plan.value : this.plan,
      start: data.start.present ? data.start.value : this.start,
      end: data.end.present ? data.end.value : this.end,
      stop: data.stop.present ? data.stop.value : this.stop,
      status: data.status.present ? data.status.value : this.status,
      comment: data.comment.present ? data.comment.value : this.comment,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('FastingData(')
          ..write('id: $id, ')
          ..write('plan: $plan, ')
          ..write('start: $start, ')
          ..write('end: $end, ')
          ..write('stop: $stop, ')
          ..write('status: $status, ')
          ..write('comment: $comment, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, plan, start, end, stop, status, comment, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FastingData &&
          other.id == this.id &&
          other.plan == this.plan &&
          other.start == this.start &&
          other.end == this.end &&
          other.stop == this.stop &&
          other.status == this.status &&
          other.comment == this.comment &&
          other.createdAt == this.createdAt);
}

class FastingCompanion extends UpdateCompanion<FastingData> {
  final Value<int> id;
  final Value<String> plan;
  final Value<DateTime> start;
  final Value<DateTime> end;
  final Value<DateTime?> stop;
  final Value<String> status;
  final Value<String?> comment;
  final Value<DateTime> createdAt;
  const FastingCompanion({
    this.id = const Value.absent(),
    this.plan = const Value.absent(),
    this.start = const Value.absent(),
    this.end = const Value.absent(),
    this.stop = const Value.absent(),
    this.status = const Value.absent(),
    this.comment = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  FastingCompanion.insert({
    this.id = const Value.absent(),
    required String plan,
    required DateTime start,
    required DateTime end,
    this.stop = const Value.absent(),
    required String status,
    this.comment = const Value.absent(),
    this.createdAt = const Value.absent(),
  })  : plan = Value(plan),
        start = Value(start),
        end = Value(end),
        status = Value(status);
  static Insertable<FastingData> custom({
    Expression<int>? id,
    Expression<String>? plan,
    Expression<DateTime>? start,
    Expression<DateTime>? end,
    Expression<DateTime>? stop,
    Expression<String>? status,
    Expression<String>? comment,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (plan != null) 'plan': plan,
      if (start != null) 'start': start,
      if (end != null) 'end': end,
      if (stop != null) 'stop': stop,
      if (status != null) 'status': status,
      if (comment != null) 'comment': comment,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  FastingCompanion copyWith(
      {Value<int>? id,
      Value<String>? plan,
      Value<DateTime>? start,
      Value<DateTime>? end,
      Value<DateTime?>? stop,
      Value<String>? status,
      Value<String?>? comment,
      Value<DateTime>? createdAt}) {
    return FastingCompanion(
      id: id ?? this.id,
      plan: plan ?? this.plan,
      start: start ?? this.start,
      end: end ?? this.end,
      stop: stop ?? this.stop,
      status: status ?? this.status,
      comment: comment ?? this.comment,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (plan.present) {
      map['plan'] = Variable<String>(plan.value);
    }
    if (start.present) {
      map['start'] = Variable<DateTime>(start.value);
    }
    if (end.present) {
      map['end'] = Variable<DateTime>(end.value);
    }
    if (stop.present) {
      map['stop'] = Variable<DateTime>(stop.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (comment.present) {
      map['comment'] = Variable<String>(comment.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FastingCompanion(')
          ..write('id: $id, ')
          ..write('plan: $plan, ')
          ..write('start: $start, ')
          ..write('end: $end, ')
          ..write('stop: $stop, ')
          ..write('status: $status, ')
          ..write('comment: $comment, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

abstract class _$LocalDatabase extends GeneratedDatabase {
  _$LocalDatabase(QueryExecutor e) : super(e);
  $LocalDatabaseManager get managers => $LocalDatabaseManager(this);
  late final $FastingTable fasting = $FastingTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [fasting];
}

typedef $$FastingTableCreateCompanionBuilder = FastingCompanion Function({
  Value<int> id,
  required String plan,
  required DateTime start,
  required DateTime end,
  Value<DateTime?> stop,
  required String status,
  Value<String?> comment,
  Value<DateTime> createdAt,
});
typedef $$FastingTableUpdateCompanionBuilder = FastingCompanion Function({
  Value<int> id,
  Value<String> plan,
  Value<DateTime> start,
  Value<DateTime> end,
  Value<DateTime?> stop,
  Value<String> status,
  Value<String?> comment,
  Value<DateTime> createdAt,
});

class $$FastingTableTableManager extends RootTableManager<
    _$LocalDatabase,
    $FastingTable,
    FastingData,
    $$FastingTableFilterComposer,
    $$FastingTableOrderingComposer,
    $$FastingTableCreateCompanionBuilder,
    $$FastingTableUpdateCompanionBuilder> {
  $$FastingTableTableManager(_$LocalDatabase db, $FastingTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$FastingTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$FastingTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> plan = const Value.absent(),
            Value<DateTime> start = const Value.absent(),
            Value<DateTime> end = const Value.absent(),
            Value<DateTime?> stop = const Value.absent(),
            Value<String> status = const Value.absent(),
            Value<String?> comment = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
          }) =>
              FastingCompanion(
            id: id,
            plan: plan,
            start: start,
            end: end,
            stop: stop,
            status: status,
            comment: comment,
            createdAt: createdAt,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String plan,
            required DateTime start,
            required DateTime end,
            Value<DateTime?> stop = const Value.absent(),
            required String status,
            Value<String?> comment = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
          }) =>
              FastingCompanion.insert(
            id: id,
            plan: plan,
            start: start,
            end: end,
            stop: stop,
            status: status,
            comment: comment,
            createdAt: createdAt,
          ),
        ));
}

class $$FastingTableFilterComposer
    extends FilterComposer<_$LocalDatabase, $FastingTable> {
  $$FastingTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get plan => $state.composableBuilder(
      column: $state.table.plan,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get start => $state.composableBuilder(
      column: $state.table.start,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get end => $state.composableBuilder(
      column: $state.table.end,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get stop => $state.composableBuilder(
      column: $state.table.stop,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get status => $state.composableBuilder(
      column: $state.table.status,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get comment => $state.composableBuilder(
      column: $state.table.comment,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get createdAt => $state.composableBuilder(
      column: $state.table.createdAt,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$FastingTableOrderingComposer
    extends OrderingComposer<_$LocalDatabase, $FastingTable> {
  $$FastingTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get plan => $state.composableBuilder(
      column: $state.table.plan,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get start => $state.composableBuilder(
      column: $state.table.start,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get end => $state.composableBuilder(
      column: $state.table.end,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get stop => $state.composableBuilder(
      column: $state.table.stop,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get status => $state.composableBuilder(
      column: $state.table.status,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get comment => $state.composableBuilder(
      column: $state.table.comment,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get createdAt => $state.composableBuilder(
      column: $state.table.createdAt,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $LocalDatabaseManager {
  final _$LocalDatabase _db;
  $LocalDatabaseManager(this._db);
  $$FastingTableTableManager get fasting =>
      $$FastingTableTableManager(_db, _db.fasting);
}
