
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/checkbox_example.dart';

class DailyTask extends StatelessWidget{
  const DailyTask({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children: [
            Container(
              height: 111,
              padding: const EdgeInsets.all(17),
              alignment: Alignment.topRight,
              child: Container(
                width: 80,
                height: 80,
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
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: const Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text.rich(
                    TextSpan(
                      text: 'Today',
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 70,
                      )
                    )
                  ),
                  Text.rich(
                    TextSpan(
                      text: 'Hide complicated',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                      )
                    )
                  )
                ],  
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 37, right: 20, top: 41),
              child: Row(
          
                  children:[
                    Transform.scale( 
                      scale: 1.7,
                      child:  CheckboxExample()
                    ),
                    Container(
                      width: 300,
                      margin: EdgeInsets.only(left: 12),
                     child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            Text.rich(
                              softWrap: true,
                              TextSpan(
                              text: 'Почистить зубы',
                              style: TextStyle(
                                color: Color.fromARGB(255, 97, 97, 97),
                                fontSize: 30,
                                fontWeight: FontWeight.w400,
                                )
                              ),
                            ),
                            Text.rich(
                              softWrap: true,
                              TextSpan(
                              text: '12:42 PM',
                              style: TextStyle(
                                color: Color.fromARGB(255, 97, 97, 97),
                                fontSize: 28,
                                fontWeight: FontWeight.w400,
                                )
                              ),
                            )
                        ],
                      ),
                    )
                  ]
                ),
            ),
          ]
        ),
    );

  }
}