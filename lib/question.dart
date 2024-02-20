import 'package:flutter/material.dart';

class Questions extends StatefulWidget {
  const Questions({Key? key}) : super(key: key);

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Google was orginally called backrub',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            )),
            SizedBox(height: 60),
            TextButton(onPressed: (){},
                style: (TextButton.styleFrom(
                  backgroundColor: Colors.green,
                  fixedSize: Size(90, 40),
                )),
                child: Text('True',
                style: TextStyle(
                  color: Colors.white,
                ))),
            SizedBox(height: 20,),
            TextButton(onPressed: (){},
                style:TextButton.styleFrom(
                  backgroundColor: Colors.red,
                  fixedSize: Size(90, 40),
                ),
                child: Text('False',style: TextStyle(
                  color: Colors.white,
                ),),

            ),
          ],
        ),
      )
    );
  }
}
