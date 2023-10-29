import 'package:flutter/material.dart';

void main() {
  runApp(Help());
}

class Help extends StatelessWidget {
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
        title: const Text('How to use this App?!'),
      ),
      body: ListView(
        children: const <Widget>[
          Text(''),
          ListTile(
            title: Text('How to change the room number?'),
            subtitle: Text('Go to dashboard.Click "your profile"..then click "edit profile" to edit your room number.'),
          ),
          Text(''),
          ListTile(
            title: Text('How do I contact support?'),
            subtitle: Text('You can contact support by emailing TCE hostel mail or by calling our Office Number.'),
          ),
          Text(''),
          ListTile(
            title: Text('Where can I report Maintenance issues?'),
            subtitle: Text('Go to Dashboard.Then click Maintenance.Write your issue and submit.Your issues will be resolved as soon as possible'),
          ),
        ],
      ),
    );
  }
}