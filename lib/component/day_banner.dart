import 'package:flutter/material.dart';

import '../const/color.dart';

class DayBanner extends StatelessWidget {
  final DateTime selectedDay;
  final int taskCount;

  const DayBanner(
      {required this.selectedDay, required this.taskCount, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryColor,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '${selectedDay.year}년 ${selectedDay.month}월 ${selectedDay.day}일 ',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              '${taskCount}개',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
