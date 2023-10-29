import 'package:first/about.dart';
import 'package:first/fav.dart';
import 'package:first/help.dart';
import 'package:first/logout.dart';
import 'package:first/meals.dart';
import 'package:first/menu.dart';
import 'package:first/profile.dart';
import 'package:first/reported%20issues.dart';
import 'package:first/satis.dart';
import 'package:first/search.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(HApp());
}

class HApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Notice Board'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
              },
            ),
            // Integrating PopupMenuButton
            PopupMenuButton<String>(
              onSelected: (String result) {
                if (result == 'Help Center') {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Help()));
                  print('Navigate to the Help Center');
                } else if (result == 'About') {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => about()));
                }
              },
              itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                const PopupMenuItem<String>(
                  value: 'Help Center',
                  child: Text('Help Center'),
                ),
                const PopupMenuItem<String>(
                  value: 'About',
                  child: Text('About'),
                ),
              ],
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Center(
            child: NoticeBoardPage(),
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              const UserAccountsDrawerHeader(accountName: Text("DashBoard"), accountEmail: Text(""),
                decoration: BoxDecoration(
                    color: Colors.blue
                ),
              ),
              ListTile(
                title: const Text('Your Profile'),
                leading: const Icon(Icons.person),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => profile()));
                },
              ),
              const Divider(
                height: 0.1,
              ),
              ListTile(
                title: const Text('Food Menu'),
                leading: const Icon(Icons.restaurant_outlined),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Menu()));
                },
              ),
              const Divider(
                height: 0.1,
              ),
              ListTile(
                title: const Text('Favourite Meals'),
                leading: const Icon(Icons.favorite),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => fav()));
                },
              ),
              const Divider(
                height: 0.1,
              ),
              ListTile(
                title: const Text('Food Rating'),
                leading: const Icon(Icons.stars_rounded),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => meals()));
                },
              ),
              const Divider(
                height: 0.1,
              ),
              ListTile(
                title: const Text('Report issues'),
                leading: const Icon(Icons.note_alt),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Report()));
                },
              ),
              const Divider(
                height: 0.1,
              ),
              ListTile(
                title: const Text('Feedback'),
                leading: const Icon(Icons.feed),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => feed()));
                },
              ),
              const Divider(
                height: 0.1,
              ),
              ListTile(
                title: const Text('Logout'),
                leading: const Icon(Icons.logout),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => logout()));
                },
              ),
              const Divider(
                height: 0.1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NoticeBoardPage extends StatelessWidget {
  final List<String> noticeMessages = [
    'Meeting today at 3 PM in the Hostel Office.',
    'Room Allotment on 13th December',
    'No Birthday Celebrations from now on',
    'Going out of hostel after 8.30 pm is strictly prohibited',
    'You have to be inside the Hostel before 9.30 pm',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height - 80, // Adjust the height as needed
          child: ListView.builder(
            itemCount: noticeMessages.length,
            itemBuilder: (context, index) {
              return Card(
                margin: const EdgeInsets.all(4),
                child: ListTile(
                  leading: const CircleAvatar(
                    child: Text('A'),
                  ),
                  title: const Text('Admin'),
                  subtitle: Text(noticeMessages[index]),
                  onTap: () {
                    // Handle tap on notice item
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
