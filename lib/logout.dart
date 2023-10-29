import 'package:flutter/material.dart';
import 'firt.dart';
import 'temp.dart';

class logout extends StatelessWidget {
  const logout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Logout'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Do you want to logout?',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20), // Add spacing of 20 pixels

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Login()));
                    // You can add more logic as needed
                  },
                  child: const Text('Yes'),
                ),
                const SizedBox(width: 10), // Add spacing of 10 pixels
                ElevatedButton(
                  onPressed: () {
                    // Cancel logout and navigate back
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HApp()));
                    // You can add more logic as needed
                  },
                  child: const Text('No'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: logout(),
  ));
}
