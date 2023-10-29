import 'package:first/adabout.dart';
import 'package:first/adhelp.dart';
import 'package:first/adlogout.dart';
import 'package:first/admeals.dart';
import 'package:first/admenu.dart';
import 'package:first/adminfeed.dart';
import 'package:first/adreport.dart';
import 'package:first/adsearch.dart';
import 'package:first/favm.dart';
import 'package:first/post.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ad());
}

class ad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: adhome(),
    );
  }
}

class adhome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text('Notice Board'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ads()));
            },
          ),
          // Integrating PopupMenuButton
          PopupMenuButton<String>(
            onSelected: (String result) {
              if (result == 'Help Center') {
                // Navigate to the help center screen
                Navigator.push(context, MaterialPageRoute(builder: (context) => adhelp()));
                print('Navigate to the Help Center');
              } else if (result == 'About') {
                // Navigate to the about screen
                // You can replace this with your navigation code
                Navigator.push(context, MaterialPageRoute(builder: (context) => adabout()));
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
      body: Center(
        child: NoticeBoardPage(),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        child: const Icon(Icons.add),
        onPressed: () {
          // Show the popup menu when the floating action button is pressed
          showPopupMenu(context);
        },
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(accountName: Text("DashBoard"), accountEmail: Text(""),
              decoration: BoxDecoration(
                  color: Colors.teal
              ),
            ),
            ListTile(
              title: const Text('Food Menu'),
              leading: const Icon(Icons.restaurant_outlined),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => admenu()));
              },
            ),
            const Divider(
              height: 0.1,
            ),
            ListTile(
              title: const Text('Favourite Meals'),
              leading: const Icon(Icons.favorite),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => favm()));
              },
            ),
            const Divider(
              height: 0.1,
            ),
            ListTile(
              title: const Text('Food Rating'),
              leading: const Icon(Icons.stars_rounded),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Meals()));
              },
            ),
            const Divider(
              height: 0.1,
            ),
            ListTile(
              title: const Text('Reported issues'),
              leading: const Icon(Icons.note_alt),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>adr()));
              },
            ),
            const Divider(
              height: 0.1,
            ),
            ListTile(
              title: const Text('Feedbacks'),
              leading: const Icon(Icons.feed),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => adfeed()));
              },
            ),
            const Divider(
              height: 0.1,
            ),
            ListTile(
              title: const Text('Logout'),
              leading: const Icon(Icons.logout),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Adlogout()));
              },
            ),
            const Divider(
              height: 0.1,
            ),
          ],
        ),
      ),
    );
  }

  void showPopupMenu(BuildContext context) {
    // Display the popup menu with "Post Notice" option
    showMenu(
      context: context,
      position: const RelativeRect.fromLTRB(10, 10, 0, 0),
      items: [
        const PopupMenuItem<String>(
          value: 'PostNotice',
          child: Text('Post Notice'),
        ),
      ],
    ).then((value) {
      // Handle the selected value
      if (value == 'PostNotice') {
        print('Post Notice selected');
        Navigator.push(context, MaterialPageRoute(builder: (context) => post()));
      }
    });
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
    return Scaffold(
      body: ListView.builder(
        itemCount: noticeMessages.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(4),
            child: ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.lightGreenAccent,
                child: Text('A'),
              ),
              title: const Text('Admin(You)'),
              subtitle: Text(noticeMessages[index]),
              onTap: () {
                // Handle tap on notice item
              },
            ),
          );
        },
      ),
    );
  }
}
