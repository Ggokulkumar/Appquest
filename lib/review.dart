import 'package:flutter/material.dart';

class review extends StatelessWidget {
  const review({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home:Scaffold(
      appBar: AppBar(
        title: Text("HOW IS YOUR FOOD"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                // Handle press for "Excellent"
                print("Excellent pressed!");
              },
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Container(
                  height: 80,
                  color: Colors.lightBlueAccent,
                  width: 300,
                  child: Center(child: Text("Excellent")),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                // Handle press for "Good"
                print("Good pressed!");
              },
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Container(
                  height: 80,
                  color: Colors.lightBlueAccent,
                  width: 300,
                  child: Center(child: Text("Good")),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                // Handle press for "Average"
                print("Average pressed!");
              },
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Container(
                  height: 80,
                  color: Colors.lightBlueAccent,
                  width: 300,
                  child: Center(child: Text("Average")),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                // Handle press for "Worst"
                print("Worst pressed!");
              },
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Container(
                  height: 80,
                  color: Colors.lightBlueAccent,
                  width: 300,
                  child: Center(child: Text("Worst")),
                ),
              ),
            ),
          ],
        ),
      ),
    )
    );
  }
}
