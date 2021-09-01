import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:news_app_web_app/src/screen/Home/home_page.dart';
import 'package:news_app_web_app/src/utiltiy/routes.dart';
import 'package:news_app_web_app/src/utiltiy/theme.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News Article',
      theme: AppThemed.light,
      darkTheme: AppThemed.dark,
      onGenerateRoute: route.configure,
      home: HomePage(),
    );
  }
}
