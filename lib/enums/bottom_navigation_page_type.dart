import 'package:flutter/material.dart';

enum BottomNavigationPageType {
  search(pageIndex: 0,
      label: '홈',
      selectedIcon: Icon(Icons.home),
      unselectedIcon: Icon(Icons.home_outlined)),
  profile(pageIndex: 1,
      label: '내 정보',
      selectedIcon: Icon(Icons.person),
      unselectedIcon: Icon(Icons.person_outline));
  final int pageIndex;
  final String label;
  final Widget selectedIcon;
  final Widget unselectedIcon;

  const BottomNavigationPageType(
      {required this.pageIndex, required this.label, required this.selectedIcon, required this.unselectedIcon});

  static List<BottomNavigationBarItem> getItem() =>
      BottomNavigationPageType.values.map((e) =>
          BottomNavigationBarItem(icon: e.unselectedIcon,
              label: e.label,
              activeIcon: e.selectedIcon)).toList();

}