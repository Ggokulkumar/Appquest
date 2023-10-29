import 'package:flutter/material.dart';

class issue extends StatelessWidget {
  const issue({Key? key});

  @override
  Widget build(BuildContext context) {
    String userIssue = ''; // Variable to store user's issue

    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home:Scaffold(
      appBar: AppBar(
        title: const Text("Report an Issue"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              style: const TextStyle(color: Colors.white), // Text color
              maxLines: 2,
              decoration: const InputDecoration(
                labelText: 'Describe the issue',
                labelStyle: TextStyle(color: Colors.white),
                hintText: 'Describe the issue',
                hintStyle: TextStyle(color: Colors.white), // Label color
                filled: true,
                fillColor: Colors.lightBlueAccent, // Background color
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue), // Border color when not focused
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white), // Border color when focused
                ),
              ),
              onChanged: (String value) {
                userIssue = value;
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // You can use the userIssue variable here to submit the issue
                print('User Issue: $userIssue');
                // Add your logic to handle the submitted issue (e.g., send to a server, save locally, etc.)
              },
              child: const Text('Submit Issue'),
            ),
          ],
        ),
      ),
    )
    );
  }
}
