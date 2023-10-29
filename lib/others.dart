import 'package:first/adreport.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(others());
}

class StudentIssue {
  final int studentNumber;
  final String issue;

  StudentIssue(this.studentNumber, this.issue);
}

class others extends StatelessWidget {
  final List<StudentIssue> studentIssues = [
    StudentIssue(1, 'plumbing issues, electrical faults, and structural damage'),
    StudentIssue(2, 'Insufficient or inadequate facilities for sanitation and personal hygiene'),
    StudentIssue(3, ' Noise disturbances and lack of soundproofing leading to disruptions and discomfort'),
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
          title: Text('Other Issues'),
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