// ignore_for_file: non_constant_identifier_names, unused_element, camel_case_types, library_private_types_in_public_api, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/assets_widget/task.dart';


class _Tasks_infoWidget extends StatelessWidget {
  final Tasks_info taskrow;
  const _Tasks_infoWidget({
    super.key,
    required this.taskrow,
  });
  
  @override
  Widget build(BuildContext context) {
    return Row( children: [const SizedBox( 
                              width: 48,
                              height: 48,
                              child:  Icon(
                                weight: 48,

                                Icons.brightness_1,
                                color: Colors.black,
                                size: 15.0,
                                semanticLabel: 'Text to announce in accessibility modes',
                              ),
                            ), Container(
                      width: 300,
                      padding: const EdgeInsets.only(top: 15),
                      margin: const EdgeInsets.only(left: 12),
                     child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          
                            Text.rich(
                              softWrap: true,
                              TextSpan(
                              text: taskrow.task_name,
                              style: const TextStyle(

                                color: Color.fromARGB(255, 97, 97, 97),
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                )
                              ),
                            ),
                            Text.rich(
                              softWrap: true,
                              TextSpan(
                              text: taskrow.task_date,
                              style: const TextStyle(
                                color: Color.fromARGB(255, 143, 143, 143),
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                )
                              ),
                            )
                        ],
                      ),
                    ),
  ]);
  }

}

class Next_Task extends StatelessWidget {
  final List<Tasks_info> task_text;

  const Next_Task({super.key, required this.task_text});
  
  @override
  Widget build(BuildContext context) {

    return Container(
              padding: const EdgeInsets.only(left: 27, right: 10, top: 27),
              child: Column(
                  children: task_text.map((taskrow) => _Tasks_infoWidget(taskrow: taskrow)).toList(),
                    ),
            );
  }

}
