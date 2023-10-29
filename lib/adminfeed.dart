import 'package:first/adminhome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(adfeed());
}

class adfeed extends StatelessWidget {
  final List<String> studentFeedbacks = [
    "improved alot",
    "unsatisfied",
    "absolutely Satisfied",
    "Still i dont like the food quality",
    "maintainance is poor ",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ad()));
            },
            color: Colors.white,
          ),
          backgroundColor: Colors.teal,
          title: Text('Student Feedbacks'),
        ),
        body: ListView.builder(
          itemCount: studentFeedbacks.length,
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: ListTile(
                title: Text(
                  'Student Feedback ${index + 1}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(studentFeedbacks[index]),
              ),
            );
          },
        ),
      ),
    );
  }
}