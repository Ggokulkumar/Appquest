import 'package:first/adfri.dart';
import 'package:first/adminhome.dart';
import 'package:first/admon.dart';
import 'package:first/adsat.dart';
import 'package:first/adsun.dart';
import 'package:first/adthu.dart';
import 'package:first/adtue.dart';
import 'package:first/adwed.dart';
import 'package:flutter/material.dart';

class admenu extends StatelessWidget {
  const admenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home:Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> ad()));
          },
          color: Colors.white,
        ),
        backgroundColor: Colors.teal,
        title: const Text('Menu'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Mon()));
              },
              child: Padding(
                padding: const EdgeInsets.all(6),
                child: Container(
                  height: 45,
                  width: 300,
                  color: Colors.lightGreenAccent,
                  child: const Center(child: Text("Monday")),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Tue()));
              },
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  height: 45,
                  width: 300,
                  color: Colors.lightGreenAccent,
                  child: const Center(child: Text("Tuesday")),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>  Wed()));// Navigate to Wednesday class/screen
              },
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  height: 45,
                  width: 300,
                  color: Colors.lightGreenAccent,
                  child: const Center(child: Text("Wednesday")),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>  Thu()));// Navigate to Thursday class/screen
              },
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  height: 45,
                  width: 300,
                  color: Colors.lightGreenAccent,
                  child: const Center(child: Text("Thursday")),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Fri()));// Navigate to Friday class/screen
              },
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  height: 45,
                  width: 300,
                  color: Colors.lightGreenAccent,
                  child: const Center(child: Text("Friday")),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Sat())); // Navigate to Saturday class/screen
              },
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  height: 45,
                  width: 300,
                  color: Colors.lightGreenAccent,
                  child: const Center(child: Text("Saturday")),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>  Sun()));// Navigate to Sunday class/screen
              },
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  height: 45,
                  width: 300,
                  color: Colors.lightGreenAccent,
                  child: const Center(child: Text("Sunday")),
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
