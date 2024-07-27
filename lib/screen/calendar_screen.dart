import 'package:flutter/material.dart';
import 'package:gandan_01/component/day_banner.dart';
import 'package:gandan_01/layout/default_layout.dart';

import '../component/Calendar.dart';

class CalendarScreen extends StatefulWidget {
  CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  DateTime selectedDay = DateTime.utc(
    DateTime.now().year,
    DateTime.now().month,
    DateTime.now().day,
  );

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: '/calendar',
      body: Column(
        children: [
          Calendar(
            focusedDay: selectedDay != null ? selectedDay : DateTime.now(),
            onDaySelected: onDaySelected,
            selectedDayPredicate: selectedDayPredicate,
          ),
          DayBanner(
            selectedDay: selectedDay,
            taskCount: 0,
          ),
        ],
      ),
    );
  }

  void onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    setState(() {
      this.selectedDay = selectedDay;
      // print('$selectedDay $focusedDay');
    });
  }

  bool selectedDayPredicate(DateTime date) {
    // if (selectedDay != null) {
    return date.isAtSameMomentAs(selectedDay);
    // }
    // return false;
  }
}
