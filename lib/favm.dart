import 'package:first/adminhome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(favm());
}

class StudentFavoriteMeals {
  final int studentNumber;
  final List<String> favoriteMeals;

  StudentFavoriteMeals(this.studentNumber, this.favoriteMeals);
}

class favm extends StatelessWidget {
  final List<StudentFavoriteMeals> studentFavMeals = [
    StudentFavoriteMeals(1, ['Veg Biriyani', 'Parotta', 'Chappati']),
    StudentFavoriteMeals(2, ['Veg Biriyani', 'Curd Rice']),
    StudentFavoriteMeals(3, ['Sambar Rice', 'Veg Biriyani', 'Dosa']),
    StudentFavoriteMeals(4, ['Chappati', 'Curd Rice']),
    StudentFavoriteMeals(5, ['Dosa', 'Veg Biriyani', 'Pulav']),

  ];

  Map<String, int> mostPopularFoodMap = {};

  void calculateMostPopularFood() {
    for (var student in studentFavMeals) {
      for (var meal in student.favoriteMeals) {
        if (mostPopularFoodMap.containsKey(meal)) {
          mostPopularFoodMap[meal] = mostPopularFoodMap[meal]! + 1;
        } else {
          mostPopularFoodMap[meal] = 1;
        }
      }
    }
  }

  String findMostPopularFood() {
    calculateMostPopularFood();
    var sortedMapEntries = mostPopularFoodMap.entries.toList()
      ..sort((a, b) => b.value.compareTo(a.value));
    return sortedMapEntries.isNotEmpty ? sortedMapEntries.first.key : 'No data';
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ad()));
            },
            color: Colors.white,
          ),
          backgroundColor: Colors.teal,
          title: Text("Student's Favorite Meals"),
        ),
        body: ListView.builder(
          itemCount: studentFavMeals.length,
          itemBuilder: (context, index) {
            return Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Student ${studentFavMeals[index].studentNumber}\'s Favorite Meals:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: studentFavMeals[index].favoriteMeals
                          .map((meal) => Text('- $meal'))
                          .toList(),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.teal,
          onPressed: () {
            // Replace this with your logic
            String mostPopularFood = findMostPopularFood();
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('Most Favorite Food'),
                  content: Text('The Most favorite food is: $mostPopularFood'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('OK'),
                    ),
                  ],
                );
              },
            );
          },
          child: Icon(Icons.analytics),
        ),
      ),
    );
  }
}
