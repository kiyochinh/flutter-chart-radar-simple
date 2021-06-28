import 'package:developer_day/utils/simple_bar_chart.dart';
import 'package:developer_day/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _bugCounter = 0;
  int _taskCounter = 0;
  int _relaxCounter = 0;

  @override
  Widget build(BuildContext context) {
    final totalActivities = _bugCounter + _taskCounter + _relaxCounter;
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Developer day',
      ),
      body: RadarChartSample1(),
    );
  }
}
