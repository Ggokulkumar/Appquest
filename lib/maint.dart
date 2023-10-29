import 'package:first/adreport.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(maint());
}

class StudentIssue {
  final int studentNumber;
  final String issue;

  StudentIssue(this.studentNumber, this.issue);
}

class maint extends StatelessWidget {
  final List<StudentIssue> studentIssues = [
    StudentIssue(1, 'Leaky faucet in the bathroom'),
    StudentIssue(2, 'Broken window in the dorm room'),
    StudentIssue(3, 'Malfunctioning air conditioner in the study room'),
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
          title: Text('Maintainance Issues'),
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