import 'package:first/adreport.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(security());
}

class StudentIssue {
  final int studentNumber;
  final String issue;

  StudentIssue(this.studentNumber, this.issue);
}

class security extends StatelessWidget {
  final List<StudentIssue> studentIssues = [
    StudentIssue(1, 'Inadequate or malfunctioning door locks and security systems'),
    StudentIssue(2, 'Poorly lit corridors, staircases, and outdoor areas'),
    StudentIssue(3, 'Lack of surveillance cameras or security personnel'),
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
          title: Text('Security Issues'),
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