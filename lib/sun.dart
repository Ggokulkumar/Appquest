import 'package:flutter/material.dart';

void main() {
  runApp(sun());
}

class sun extends StatelessWidget {
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
    'Breakfast: Rava Dosa',
    'Lunch: Veg Biryani',
    'Snacks: Corn Flakes',
    'Dinner: Dosa',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sunday Menu'),
      ),
      body: ListView.builder(
        itemCount: menuItems.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              title: Text(
                menuItems[index],
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              trailing: IconButton(
                icon: const Icon(Icons.fastfood_rounded),
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