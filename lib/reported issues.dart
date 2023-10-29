import 'package:flutter/material.dart';
import 'issue.dart';

class Report extends StatelessWidget {
  const Report({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            color: Colors.white,
          ),
          title: const Text("Report Issues "),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const issue()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Container(
                      height: 80,
                      color: Colors.lightBlueAccent,
                      width: 300,
                      child: const Center(child: Text("MAINTENANCE")),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Handle security container tap
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const issue()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Container(
                      height: 80,
                      color: Colors.lightBlueAccent,
                      width: 300,
                      child: const Center(child: Text("SECURITY")),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const issue()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Container(
                      height: 80,
                      color: Colors.lightBlueAccent,
                      width: 300,
                      child: const Center(child: Text("CLEANLINESS")),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const issue()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Container(
                      height: 80,
                      color: Colors.lightBlueAccent,
                      width: 300,
                      child: const Center(child: Text("OTHERS")),
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

void main() {
  runApp(const Report());
}
