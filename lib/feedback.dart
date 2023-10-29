import 'package:flutter/material.dart';

class feedback extends StatelessWidget {
  const feedback({Key? key});

  @override
  Widget build(BuildContext context) {
    String userSuggestion = ''; // Variable to store user's suggestion

    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home:Scaffold(
      appBar: AppBar(
        title: Text("Give your feedback!")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: InkWell(
                onTap: () {
                  print('tapped'); 
                },
                child: Container(
                  height: 80,
                  width: 300,
                  color: Colors.lightBlueAccent,
                  child: const Center(child: Text("Satisfied 👍🏻")),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: InkWell(
              onTap: () {
                print('tapped');
              },
              child: Container(
                height: 80,
                width: 300,
                color: Colors.lightBlueAccent,
                child: const Center(child: Text("Unsatisfied 👎🏻")),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Container(
              height: 60,
              width: 300,
              color: Colors.lightBlueAccent,
              child: TextFormField(
                style: const TextStyle(color: Colors.white), // Text color
                decoration: const InputDecoration(
                  labelText: 'Write your feedback here',
                  labelStyle: TextStyle(color: Colors.white), // Label color
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white), // Border color when not focused
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white), // Border color when focused
                  ),
                ),
                onChanged: (String value) {
                  userSuggestion = value;
                },
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // You can use the userSuggestion variable here to perform any action with the suggestion
              print('User Suggestion: $userSuggestion');
            },
            child: const Text('Submit Feedback'),
          ),
        ],
      ),
    )
    );
  }
}
