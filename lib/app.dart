import 'package:flutter/material.dart';
import 'package:pharmabros/router.dart';
import 'package:pharmabros/styles/style.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Pharma-bros',
      routerConfig: router,
      theme: ThemeData(
        fontFamily: 'NotoSansKR',
        colorScheme: ColorScheme.fromSeed(seedColor: AppStyle.color.pink),
        useMaterial3: true,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          surfaceTintColor: Colors.white,
          shadowColor: Colors.transparent,
          centerTitle: false,
          shape: Border(bottom: BorderSide(color: AppStyle.color.buttonContainer))
        ),
        iconTheme: IconThemeData(
          color: AppStyle.color.hintText
        )
      ),
    );
  }
}
