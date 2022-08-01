import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
Widget richText =   const Text.rich(
              TextSpan(
    text: 'You have selected ',
    style: TextStyle(fontSize: 20),
    children: <TextSpan>[
      TextSpan(text: 'Flutter BLoC', style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic)),
      TextSpan(text: ' as best Library!'),
    ],
  ),
            );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left:20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children:   [
            const Text("Thank You!",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            const SizedBox(height: 20,),
            richText
          ],
        ),
      ),
    );
  }
}