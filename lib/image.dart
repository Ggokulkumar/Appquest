import 'package:flutter/material.dart';

void main() {
  runApp(dp());
}

class dp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Example',
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Image.network(
          'https://images.unsplash.com/photo-1513104890138-7c749659a591'
          , // Replace with your image URL
          width: 150.0,
          height: 150.0,
        ),
      ),
    );
  }
}