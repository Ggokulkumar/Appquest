import 'package:first/adminhome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(adabout());
}

class adabout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AboutPage(),
    );
  }
}

class AboutPage extends StatelessWidget {
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
          title: const Text('About This App'),
        ),
        body: Center(child: Card(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Developed by Team Byte knights',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                const Text('Team members: Lavanya, Vasanth, Gokul Kumar, Hari Prasanna'),
                const SizedBox(height: 20),
                Align(
                  alignment: Alignment.bottomRight,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> ad()));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.teal
                    ),
                    child: const Text('OK'),
                  ),
                ),
              ],
            ),
          ),
        ),
        )
    );
  }
}
