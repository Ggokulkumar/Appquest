import 'package:flutter/material.dart';

void main() {
  runApp(feed());
}

class feed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FeedbackPage(),
    );
  }
}

class FeedbackPage extends StatefulWidget {
  const FeedbackPage({Key? key}) : super(key: key);

  @override
  _FeedbackPageState createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  String userSuggestion = ''; // Variable to store user's suggestion

  bool isSatisfiedClicked = false;
  bool isUnsatisfiedClicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Give your Feedback!"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    isSatisfiedClicked = true;
                    isUnsatisfiedClicked = false;
                  });
                  print('Satisfied clicked');
                },
                child: Container(
                  height: 100,
                  width: 300,
                  decoration: BoxDecoration(
                    color: isSatisfiedClicked ? Colors.green : Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Center(
                    child: Text(
                      "😊 Satisfied",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isUnsatisfiedClicked = true;
                    isSatisfiedClicked = false;
                  });
                  print('Unsatisfied clicked');
                },
                child: Container(
                  height: 100,
                  width: 300,
                  decoration: BoxDecoration(
                    color: isUnsatisfiedClicked ? Colors.red : Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Center(
                    child: Text(
                      "😞 Unsatisfied",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Container(
                width: 300,
                child: TextFormField(
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    labelText: 'Your Feedback',
                    labelStyle: TextStyle(color: Colors.grey[700]),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.teal),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.teal, width: 2.0),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onChanged: (String value) {
                    userSuggestion = value;
                  },
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  print('User Suggestion: $userSuggestion');
                },
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'Submit Feedback',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}