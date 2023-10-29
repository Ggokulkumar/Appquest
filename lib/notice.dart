
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: del(),
  ));
}

class del extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TCE Hostel'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              print('Search button clicked');
            },
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {
              print('More button clicked');
            },
          )
        ],
      ),
      body: Column(
        children: [
          // Noticeboard placeholder, you can replace this with your actual noticeboard
          Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Noticeboard',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                NoticeCard('Urgent Notice 1'),
                NoticeCard('Important Update'),
                NoticeCard('Emergency Announcement'),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          print('Floating Action Button clicked');
        },
      ),
      drawer: const Drawer(
        // ... (unchanged code)
      ),

    );
  }
}

class NoticeCard extends StatelessWidget {
  final String notice;

  NoticeCard(this.notice);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: ListTile(
        title: Text(notice),
        onTap: () {
          // Handle tapping on a notice
          print('Notice tapped: $notice');
        },
      ),
    );
  }
}
