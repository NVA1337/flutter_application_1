
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/task_creator.dart';
import '../assets_widget/next_task.dart';
import 'package:flutter_application_1/assets_widget/task.dart';

// ignore: must_be_immutable
class DailyTask extends StatelessWidget{
  static const List<Tasks_info> tasks=[
    Tasks_info('Первая задача','12:10'),
    Tasks_info('Вторая задача, но уже подлинее в этот раз','9:30'),
    Tasks_info('Вторая задача, но уже подлинее в этот раз','9:30'),
    Tasks_info('Вторая задача, но уже подлинее в этот раз','9:30'),
    Tasks_info('Вторая задача, но уже подлинее в этот раз','9:30'),
    Tasks_info('Вторая задача, но уже подлинее в этот раз','9:30'),
    Tasks_info('Вторая задача, но уже подлинее в этот раз','9:30'),
    Tasks_info('Вторая задача, но уже подлинее в этот раз','9:30'),
    Tasks_info('Вторая задача, но уже подлинее в этот раз','9:30'),
    Tasks_info('Вторая задача, но уже подлинее в этот раз','9:30'),
    Tasks_info('Вторая задача, но уже подлинее в этот раз','9:30'),
  ];

  static const List<Tasks_info> next_tasks=[
    Tasks_info('Первая задача','12:10'),
  ];

  // ignore: use_key_in_widget_constructors
  const DailyTask();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 120,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              alignment: Alignment.bottomRight ,
              child: Container(
                width: 60,
                height: 60,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage('images/1.png'),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text.rich(
                    TextSpan(
                      text: 'Today',
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 38,
                      )
                    )
                  ),
                  Text.rich(
                    TextSpan(
                      text: 'Hide complicated',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      )
                    )
                  )
                ],  
              ),
            ),
            const Task(task_text: tasks),
            Container(
              padding: const EdgeInsets.only(top: 10,left: 20),
              child: const Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text.rich(
                    TextSpan(
                      text: 'Tomorrow',
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 38,
                      )
                    )
                  ),
                ],  
              ),
            ),
            const Next_Task(task_text: next_tasks),
            FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const NewWidget2();
                  },
                ),
              );
            },
            child: const Icon(Icons.add),
          ),
          ]
        ),
    )
  );

  }
}