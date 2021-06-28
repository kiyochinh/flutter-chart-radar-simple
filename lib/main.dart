import 'package:developer_day/screens/home_page.dart';
import 'package:developer_day/theme/custom_theme.dart';
import 'package:developer_day/utils/constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DeveloperDayApp());
}

class DeveloperDayApp extends StatefulWidget {
  const DeveloperDayApp({Key key}) : super(key: key);

  @override
  _DeveloperDayAppState createState() => _DeveloperDayAppState();
}

class _DeveloperDayAppState extends State<DeveloperDayApp> {
  @override
  void initState() {
    super.initState();
    currentTheme.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: CustomTheme.lightTheme,
      darkTheme: CustomTheme.darkTheme,
      themeMode: currentTheme.currentTheme,
    );
  }
}
