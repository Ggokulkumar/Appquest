import 'package:first/admeals.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Break());
}

class FoodItem {
  final String name;
  final int votes;

  FoodItem(this.name, this.votes);
}

class Break extends StatelessWidget {
  final List<FoodItem> foodItems = [
    FoodItem("Excellent-😇", 100),

    FoodItem("Good-😊", 50),
    FoodItem("Average-😐", 15),
    FoodItem("Poor-😤", 4),
    FoodItem("Worst-😡", 3),
  ];

  @override
  Widget build(BuildContext context) {
    // Sort the food items by votes in descending order.
    foodItems.sort((a, b) => b.votes.compareTo(a.votes));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Meals()));
            },
            color: Colors.white,
          ),
          backgroundColor: Colors.teal,
          title: Text("Today's Breakfast Rating"),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: foodItems.length,
                itemBuilder: (context, index) {
                  final foodItem = foodItems[index];
                  return ListTile(
                    title: Text(foodItem.name),
                    subtitle: Text("Votes: ${foodItem.votes}"),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}