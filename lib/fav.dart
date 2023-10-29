import 'package:flutter/material.dart';

void main() {
  runApp(fav());
}

class fav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Favorite Meal App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> favoriteMeals = [
    'Veg Biriyani',
    'Pulav',
    'Chappati with Paneer',
    'Parotta',
    'Dosa',
    'Idly',
    'Pongal',
    'Variety Rice',
    'Sambar Rice',
    'Semiya Upma',
  ];

  List<bool> isFavorite = List.filled(10, false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Your Favourite Food'),
      ),
      body: ListView.builder(
        itemCount: favoriteMeals.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(favoriteMeals[index]),
            trailing: IconButton(
              icon: Icon(
                Icons.favorite,
                color: isFavorite[index] ? Colors.red : Colors.grey,
              ),
              onPressed: () {
                setState(() {
                  isFavorite[index] = !isFavorite[index];
                });
              },
            ),
          );
        },
      ),
    );
  }
}