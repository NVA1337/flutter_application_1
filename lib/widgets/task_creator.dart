import 'package:flutter/material.dart';
import 'package:flutter_application_1/assets_widget/time_picker.dart';
import 'package:flutter_application_1/widgets/daily_tasks.dart';


class NewWidget2 extends StatefulWidget  {
  const NewWidget2({
    super.key,
  });

  @override
  // ignore: library_private_types_in_public_api
  _NewWidget2State createState() => _NewWidget2State();
}

class _NewWidget2State extends State<NewWidget2> {
  String _name = ''; // Для хранения имени
  TimeOfDay _selectedTime = TimeOfDay.now(); // Изначально выбранное время

  // Функция для обновления имени
  void _updateName(String name) {
    setState(() {
      _name = name;
    });
  }
  // Функция для обновления времени
  void _updateTime(TimeOfDay newTime) {
    setState(() {
      _selectedTime = newTime;
    });
  }

  // Функция для передачи данных в следующий виджет
  void _navigateToNextWidget(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DailyTask(name: _name, time: _selectedTime),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 228, 228, 228),
        centerTitle: true,
        title: const Text("Task"),
      ),
      body: Column(
        children: [
          Container( 
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const Text.rich(
                    TextSpan(
                      text: 'Today',
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 38,
                      )
                    )
                  )
                ),

              Row(
        children: [
          Container( 
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const Text.rich(
                    TextSpan(
                      
                      text: 'Name',
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 24,
                      )
                    )
                  )
                ),
          Flexible(
            child: Container(
              margin: const EdgeInsets.only(right: 50),
              child: TextField(
                    onChanged: _updateName, // Считываем имя
                    decoration: const InputDecoration(
                      hintText: 'Enter your task',
                    ),
              )
            ),
          ),
        ],
      ),
      // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
      Container(
        margin: const EdgeInsets.only(top: 10,left: 20), 
        child: const TimePickerWidget(),

      ),
      ElevatedButton(
            onPressed: () => _navigateToNextWidget(context),
            child: const Text('Next'),)
        ]
      ),
      
      
    );
  }
}