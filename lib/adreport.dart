import 'package:first/Security.dart';
import 'package:first/adminhome.dart';
import 'package:first/clean.dart';
import 'package:first/image.dart';
import 'package:first/issue.dart';
import 'package:first/maint.dart';
import 'package:first/others.dart';
import 'package:flutter/material.dart';
class adr extends StatelessWidget {
  const adr({Key? key});

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
        title: const Text("Reported Issues"),
      ),
      body: Center(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>maint()));
              },
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Container(
                  height: 80,
                  color: Colors.lightGreenAccent,
                  width: 300,
                  child: const Center(child: Text("MAINTENANCE")),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                // Handle security container tap
                Navigator.push(context, MaterialPageRoute(builder: (context)=>security()));
              },
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Container(
                  height: 80,
                  color: Colors.lightGreenAccent,
                  width: 300,
                  child: const Center(child: Text("SECURITY")),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> clean()));
              },
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Container(
                  height: 80,
                  color: Colors.lightGreenAccent,
                  width: 300,
                  child: const Center(child: Text("CLEANLINESS")),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>others()));
              },
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Container(
                  height: 80,
                  color: Colors.lightGreenAccent,
                  width: 300,
                  child: const Center(child: Text("OTHERS")),
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
