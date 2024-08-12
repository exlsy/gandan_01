import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import '../const/color.dart';

class Calendar extends StatelessWidget {
  final DateTime focusedDay;
  final OnDaySelected onDaySelected;
  final bool Function(DateTime day) selectedDayPredicate;

  Calendar({
    required this.focusedDay,
    required this.onDaySelected,
    required this.selectedDayPredicate,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // final _events = LinkedHashMap(
    //   equals: isSameDay,
    // )..addAll({
    //     DateTime(2024, 8, 4):
    //         Event(date: DateTime(2024, 8, 4), fastingHour: 10),
    //     DateTime(2024, 8, 6):
    //         Event(date: DateTime(2024, 8, 6), fastingHour: 14),
    //     DateTime(2024, 8, 7):
    //         Event(date: DateTime(2024, 8, 7), fastingHour: 16),
    //     DateTime(2024, 8, 9):
    //         Event(date: DateTime(2024, 8, 9), fastingHour: 18),
    //   });
    Map<DateTime, Event> events = {
      DateTime(2024, 8, 1): Event('6h'),
      DateTime(2024, 8, 2): Event('24h'),
      DateTime(2024, 8, 3): Event('9h'),
      DateTime(2024, 8, 5): Event('18h'),
      DateTime(2024, 8, 12): Event('16h'),
    };

    Event _getEventsForDay(DateTime day) {
      return events[day] ?? Event('');
    }

    final defaultBoxDecoration = BoxDecoration(
      // color: Colors.lightBlue,
      borderRadius: BorderRadius.circular(6.0),
      border: Border.all(
        color: Colors.grey[200]!,
        width: 1.0,
      ),
    );

    final defaultTextStyle = TextStyle(
      color: Colors.grey[600],
      fontWeight: FontWeight.w700,
    );

    return TableCalendar(
      locale: 'ko_KR',
      focusedDay: focusedDay,
      firstDay: DateTime(1800),
      lastDay: DateTime(3000),
      headerStyle: const HeaderStyle(
        formatButtonVisible: false,
        titleCentered: true,
        titleTextStyle: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w700,
        ),
      ),
      calendarStyle: CalendarStyle(
        isTodayHighlighted: true,
        defaultDecoration: defaultBoxDecoration,
        weekendDecoration: defaultBoxDecoration,
        selectedDecoration: defaultBoxDecoration.copyWith(
            border: Border.all(color: primaryColor, width: 1.0)),
        defaultTextStyle: defaultTextStyle,
        weekendTextStyle: defaultTextStyle,
        selectedTextStyle: defaultTextStyle.copyWith(
          color: primaryColor,
        ),
        todayDecoration: defaultBoxDecoration.copyWith(
          color: primaryColor,
        ),
        outsideDecoration: defaultBoxDecoration.copyWith(
          border: Border.all(color: Colors.transparent),
        ),
      ),
      onDaySelected: onDaySelected,
      selectedDayPredicate: selectedDayPredicate,
      calendarBuilders: CalendarBuilders(
        markerBuilder: (context, date, events) {
          DateTime _date = DateTime(date.year, date.month, date.day);
          print("${_date} --> ${_getEventsForDay(_date).title}");
          if (_getEventsForDay(_date).title.length > 0) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  // color: Colors.blue,
                  width: 30,
                  height: 15,
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    // borderRadius: BorderRadius.circular(12.0),
                    border: Border.all(
                      color: Colors.grey[200]!,
                      width: 1.0,
                    ),
                  ),

                  child: Text(
                    '${_getEventsForDay(_date).title}',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}

class Event {
  String title;
  Event(this.title);
}
