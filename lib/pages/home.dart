import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pharmabros/pages/home/profile.dart';
import 'package:pharmabros/pages/home/search.dart';
import 'package:pharmabros/providers/home.dart';
import 'package:pharmabros/styles/style.dart';
import 'package:pharmabros/widgets/bottom_navigation.dart';
import 'package:pharmabros/widgets/search/search_bar.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(bottomNavigationNotifierProvider);
    return Scaffold(
      backgroundColor: state == 0?Colors.white:AppStyle.color.primaryBackground,
      bottomNavigationBar: const BottomNavigation(),
      appBar: AppBar(
        title: state == 0
            ? const SearchBarWidget()
            : Text(
                '내 정보',
                style: AppStyle.typography.heading3,
              ),
      ),
      body: SafeArea(
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 200),
          child: state == 0 ? const SearchPage() : const ProfilePage(),
        ),
      ),
    );
  }
}
