import 'package:flutter/material.dart';

class NewWidget2 extends StatelessWidget {
  const NewWidget2({
    super.key,
  });

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
              child: const TextField()
            ),
          ),
        ],
      ),
        ]
      ),
      
    );
  }
}