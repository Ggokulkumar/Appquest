import 'package:first/rating.dart';
import 'package:flutter/material.dart';

class meals extends StatelessWidget {
  const meals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home:Scaffold(
      appBar: AppBar(
        title: const Text("Rate Your Daily Meals"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>  rating()));
              },
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Container(
                  height: 80,
                  color: Colors.lightBlueAccent,
                  width: 300,
                  child: const Center(child: Text("BREAKFAST")),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => rating()));
              },
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Container(
                  height: 80,
                  color: Colors.lightBlueAccent,
                  width: 300,
                  child: const Center(child: Text("LUNCH")),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => rating()));
              },
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Container(
                  height: 80,
                  color: Colors.lightBlueAccent,
                  width: 300,
                  child: const Center(child: Text("DINNER")),
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
