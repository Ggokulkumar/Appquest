import 'package:first/adminhome.dart';
import 'package:first/notice.dart';
import 'package:first/temp.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(about());
}

class about extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AboutPage(),
    );
  }
}

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About This App'),
      ),
      body: Center(child: Card(
    child: Padding(
    padding: const EdgeInsets.all(25),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Text(
    'Developed by Team Byte knights',
    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    ),
    SizedBox(height: 20),
    Text('Team members: Lavanya, Vasanth, Gokul Kumar, Hari Prasanna'),
    SizedBox(height: 20),
    Align(
    alignment: Alignment.bottomRight,
    child: ElevatedButton(
    onPressed: () {

    Navigator.of(context).pop();
    Navigator.push(context, MaterialPageRoute(builder: (context)=> HApp()));
    },
    child: Text('OK'),
    ),
    ),
    ],
    ),
    ),
    ),
      )
    );
  }
}
