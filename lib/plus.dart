import 'package:flutter/material.dart';

void main() {
  runApp(plus());
}

class plus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(""),
      ),
      body: Center(
        child: IconButton(
          icon: const Icon(Icons.add),
          onPressed: () {
            _displayConfirmationDialog(context);
          },
        ),
      ),
    );
  }

  void _displayConfirmationDialog(BuildContext context) async {
    String userMessage = '';
    bool sendInfo = false;
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              title: const Text(''),
              content: const Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Do you want to send any information to the student?'),

                ],
              ),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    sendInfo = true;
                    // Implement logic for sending information to the student
                    print('Sending information to the student: $userMessage');
                    Navigator.of(context).pop();
                  },
                  child: const Text('Yes'),
                ),
                TextButton(
                  onPressed: () {
                    sendInfo = false;
                    Navigator.of(context).pop();
                  },
                  child: const Text('No'),
                ),
              ],
            );
          },
        );
      },
    );

    // Perform actions based on the user's selection
    if (sendInfo) {
      // Implement logic for sending information to the student
      print('Sending information to the student: $userMessage');
    } else {
      // Implement logic when the user chooses not to send information
      print('No information sent to the student.');
    }
  }
}