
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/task.dart';

// ignore: must_be_immutable
class DailyTask extends StatelessWidget{
  static const List<Tasks_info> tasks=[
    Tasks_info('Первая задача','12:10'),
    Tasks_info('Вторая задача, но уже подлинее в этот раз','9:30'),
  ];
  // ignore: use_key_in_widget_constructors
  const DailyTask();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
            const Task(task_text: tasks)

          ]
        ),
    );

  }
}