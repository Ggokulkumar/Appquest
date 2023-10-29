import 'package:first/adminhome.dart';
import 'package:first/brate.dart';
import 'package:first/drate.dart';
import 'package:first/lrate.dart';
import 'package:first/rating.dart';
import 'package:flutter/material.dart';

class Meals extends StatelessWidget {
  const Meals({Key? key}) : super(key: key);

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
        title: const Text("Food Rating"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>  Break()));
              },
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Container(
                  height: 80,
                  color: Colors.lightGreenAccent,
                  width: 300,
                  child: const Center(child: Text("BREAKFAST")),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Lunch()));
              },
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Container(
                  height: 80,
                  color: Colors.lightGreenAccent,
                  width: 300,
                  child: const Center(child: Text("LUNCH")),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Dinner()));
              },
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Container(
                  height: 80,
                  color: Colors.lightGreenAccent,
                  width: 300,
                  child: const Center(child: Text("DINNER")),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
