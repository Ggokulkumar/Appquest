import 'package:first/adreport.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(clean());
}

class StudentIssue {
  final int studentNumber;
  final String issue;

  StudentIssue(this.studentNumber, this.issue);
}

class clean extends StatelessWidget {
  final List<StudentIssue> studentIssues = [
    StudentIssue(1, 'Littered corridors and hallways'),
    StudentIssue(2, 'Dusty or unkempt furniture and fixtures'),
    StudentIssue(3, 'Garbage or trash left unattended for long periods'),
    // Add more student issues here
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> adr()));
            },
            color: Colors.white,
          ),
          backgroundColor: Colors.teal,
          title: Text('Cleanliness Issues'),
        ),
        body: ListView.builder(
          itemCount: studentIssues.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text('Student ${studentIssues[index].studentNumber}'),
                subtitle: Text('Issue: ${studentIssues[index].issue}'),
              ),
            );
          },
        ),
      ),
    );
  }
}