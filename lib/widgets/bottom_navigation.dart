import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pharmabros/enums/bottom_navigation_page_type.dart';
import 'package:pharmabros/providers/home.dart';
import 'package:pharmabros/styles/style.dart';

class BottomNavigation extends ConsumerWidget {
  const BottomNavigation({super.key});


  bool isHere(int value,int state) =>
      value == state;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(bottomNavigationNotifierProvider);
    return BottomNavigationBar(
      items: BottomNavigationPageType.getItem(),
      currentIndex: state,
      onTap: (value) {
        if(isHere(value,state)){
          return;
        }
        ref.read(bottomNavigationNotifierProvider.notifier).set(value);
      },
      iconSize: 24,
      selectedItemColor: AppStyle.color.primaryText,
      unselectedItemColor: AppStyle.color.secondaryText,
      selectedLabelStyle: AppStyle.typography.body3,
      unselectedLabelStyle: AppStyle.typography.body3,
    );
  }
}
