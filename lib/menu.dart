import 'package:flutter/material.dart';
import 'monday.dart';
import 'tue.dart';
import 'wed.dart';
import 'thu.dart';
import 'fri.dart';
import 'sat.dart';
import 'sun.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Menu'),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => monday()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(6),
                    child: Container(
                      height: 45,
                      width: 300,
                      color: Colors.lightBlueAccent,
                      child: const Center(child: Text("Monday")),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => tue()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Container(
                      height: 45,
                      width: 300,
                      color: Colors.lightBlueAccent,
                      child: const Center(child: Text("Tuesday")),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => wed()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Container(
                      height: 45,
                      width: 300,
                      color: Colors.lightBlueAccent,
                      child: const Center(child: Text("Wednesday")),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => thu()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Container(
                      height: 45,
                      width: 300,
                      color: Colors.lightBlueAccent,
                      child: const Center(child: Text("Thursday")),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => fri()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Container(
                      height: 45,
                      width: 300,
                      color: Colors.lightBlueAccent,
                      child: const Center(child: Text("Friday")),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => sat()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Container(
                      height: 45,
                      width: 300,
                      color: Colors.lightBlueAccent,
                      child: const Center(child: Text("Saturday")),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => sun()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Container(
                      height: 45,
                      width: 300,
                      color: Colors.lightBlueAccent,
                      child: const Center(child: Text("Sunday")),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
