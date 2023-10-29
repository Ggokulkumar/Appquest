import 'package:first/adminhome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(adhelp());
}

class adhelp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: help(),
    );
  }
}

class help extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> ad()));
          },
          color: Colors.white,
        ),
        backgroundColor: Colors.teal,
        title: const Text('How to use this App?!'),
      ),
      body: ListView(
        children: <Widget>[
          Text(''),
          const ListTile(
            title: Text('How to update the menu?'),
            subtitle: Text('Go to dashboard.Click food menu.Select any day and edit the menu using "Edit menu"'),
          ),
          const Text(''),
          const ListTile(
            title: Text('How do I contact support?'),
            subtitle: Text('You can contact the developers-Byte Knights(Contact no: 9489465071)'),
          ),
          const Text(''),
          const ListTile(
            title: Text('How to I view reported maintenance issues?'),
            subtitle: Text('Go to Dashboard.Then click Reported issues.then click maintenance to read all the reports.'),
          ),
        ],
      ),
    );
  }
}