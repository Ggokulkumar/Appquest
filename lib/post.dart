import 'package:first/adminhome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(post());
}

class post extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MessagePage(),
    );
  }
}

class MessagePage extends StatefulWidget {
  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  TextEditingController messageController = TextEditingController();
  String message = "";

  void sendMessage() {
    // Simulate sending the message to the student (you can implement the actual sending logic)
    String studentMessage = messageController.text;
    // You can add your own logic here to send the message to the student.
    print("Message sent to student: $studentMessage");
    setState(() {
      message = studentMessage;
      messageController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> ad()));
          },
          color: Colors.white,
        ),
        backgroundColor: Colors.teal,
        title: Text('Post Notice'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: messageController,
              decoration: InputDecoration(
                labelText: 'Write your Notice here',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed:(){
                Navigator.of(context).pop();
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ad()));
            },
              style: ElevatedButton.styleFrom(
                primary: Colors.teal
              ),
              child: Text('Send Notice'),
            ),
            SizedBox(height: 16.0),
            if (message.isNotEmpty)
              Card(
                color: Colors.blue[100],
                child: ListTile(
                  title: Text('Admin Message:'),
                  subtitle: Text(message),
                ),
              ),
          ],
        ),
      ),
    );
  }
}