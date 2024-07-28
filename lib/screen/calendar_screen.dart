import 'package:flutter/material.dart';
import 'package:gandan_01/component/day_banner.dart';
import 'package:gandan_01/component/schedule_card.dart';
import 'package:gandan_01/const/color.dart';
import 'package:gandan_01/layout/default_layout.dart';

import '../component/calendar.dart';

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
      floatingActionButton: FloatingActionButton(
        foregroundColor: primaryColor,
        backgroundColor: Colors.white,
        onPressed: () {},
        child: Icon(
          Icons.add,
        ),
        shape: CircleBorder(
          side: BorderSide(
            width: 3.0,
            color: Colors.blue,
          ),
        ),
      ),
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
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
              child: ListView(
                children: [
                  ScheduleCard(
                      startTime: DateTime(2024, 07, 27, 11),
                      endTime: DateTime(2024, 07, 27, 12),
                      content: '플러터 공부하기',
                      color: Colors.blue),
                ],
              ),
            ),
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
