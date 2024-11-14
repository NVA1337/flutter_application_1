import 'package:flutter/material.dart';


class TimePickerWidget extends StatefulWidget {
  const TimePickerWidget({
    super.key
  });

  @override
  // ignore: library_private_types_in_public_api
  _TimePickerWidgetState createState() {
  
    return _TimePickerWidgetState();
  }
}

class _TimePickerWidgetState extends State<TimePickerWidget>{
  TimeOfDay selectTime = TimeOfDay.now();
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[Text.rich(
                    TextSpan(
                      text: "${selectTime.hour}:${selectTime.minute}",
                      style: const TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 38,
                      )
                    )
                  ),
          Container(
            padding: const EdgeInsets.only(left: 15),
            child: ElevatedButton(
            onPressed: () async{
              final TimeOfDay? timeOfDay = await showTimePicker(
                context: context, 
                initialTime: selectTime);
              if (timeOfDay != null){
                setState(() {
                  selectTime = timeOfDay;
                });
              }
            }, child: const Text("выбери время"),)),

      ]
      )
      );
  }

}