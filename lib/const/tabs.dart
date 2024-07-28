import 'package:flutter/material.dart';

class TabInfo {
  final IconData icon;
  final String label;

  const TabInfo({required this.icon, required this.label});
}

const TABS = [
  TabInfo(
    icon: Icons.home,
    label: '홈',
  ),
  TabInfo(
    icon: Icons.history,
    label: '기록',
  ),
  TabInfo(
    icon: Icons.insert_chart_outlined,
    label: '통계',
  ),
];
