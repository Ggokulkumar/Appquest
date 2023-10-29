import 'package:first/admenu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Tue());
}

class Tue extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hostel Food Menu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HostelMenuScreen(),
    );
  }
}

class HostelMenuScreen extends StatelessWidget {
  final List<String> menuItems = [
    'Breakfast: Dosa',
    'Lunch: Sambar Rice',
    'Snacks: Milk Bun',
    'Dinner: Parotta',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> admenu()));
          },
          color: Colors.white,
        ),
        backgroundColor: Colors.teal,
        title: Text('Tuesday Menu'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: menuItems.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.all(10),
                  child: ListTile(
                    title: Text(
                      menuItems[index],
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.fastfood_rounded),
                      onPressed: () {
                        // Add your logic for adding the item to the cart here
                      },
                    ),
                  ),
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Add your logic for editing the profile here
            },

            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.teal,
              padding: const EdgeInsets.all(15),
            ),
            child: const Text('Edit Menu',),
          ),

        ],

      ),

    );
  }
}