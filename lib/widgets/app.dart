import 'package:flutter/material.dart';
import 'daily_tasks.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DailyTask(name: '',time: TimeOfDay.now()), 
      );
  }

}