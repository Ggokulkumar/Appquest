import 'package:flutter/material.dart';

void main() {
  runApp(rating());
}

class rating extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Rating App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home:Scaffold(
      appBar: AppBar(
        title: const Text('Food Rating'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(60),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 3),
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Column(
                children: [
                  Text('Excellent-😇', style: TextStyle(fontSize: 25)),
                  Text(' '),
                  Text(' '),
                  Text('Good-🙂', style: TextStyle(fontSize: 25)),
                  Text(' '),
                  Text(' '),
                  Text('Average-😐', style: TextStyle(fontSize: 25)),
                  Text(' '),
                  Text(' '),
                  Text('Poor-😤', style: TextStyle(fontSize: 25)),
                  Text(' '),
                  Text(' '),
                  Text('Worst-😡', style: TextStyle(fontSize: 25)),
                ],
              ),
            ),
            const SizedBox(height: 70),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 3),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                  children: [
                  const Text('Rate your Food:', style: TextStyle(fontSize: 25)),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  EmojiButton('😇', 'Excellent'),
                  EmojiButton('🙂', 'Good'),
                  EmojiButton('😐', 'Average'),
                  EmojiButton('😤', 'Poor'),
                  EmojiButton('😡','Worst'),
                ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    )
    );
  }
}

class EmojiButton extends StatelessWidget {
  final String emoji;
  final String category;

  EmojiButton(this.emoji, this.category);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Tooltip(
        message: category,
        child: Text(
          emoji,
          style: const TextStyle(fontSize: 28),
        ),
      ),
      onPressed: () {
        // Add your logic for each rating category here
        print(category);
      },
    );
  }
}