import 'package:flutter/material.dart';

void main() {
  runApp(fri());
}

class fri extends StatelessWidget {
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
    'Breakfast: Idly',
    'Lunch: Sambar',
    'Snacks: Thool Bajji',
    'Dinner: Dosa',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Friday Menu'),
      ),
      body: ListView.builder(
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
    );
  }
}