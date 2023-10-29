
import 'package:first/rating.dart';
import 'package:flutter/material.dart';
class rate  extends StatelessWidget {
  const rate({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home:Scaffold(
      appBar: AppBar(

      ),
     body: InkWell(
      onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => rating()));
     },
     child: Center(
       child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
       Padding(
       padding: const EdgeInsets.all(12),
       child: Container(
         height: 80,
         color: Colors.lightBlueAccent,
         width: 300,
         child: const Center(child: Text("Rate Your Food")),
       ),
     ),
       Padding(
         padding: const EdgeInsets.all(12),
         child: Container(
           height: 80,
           color: Colors.lightBlueAccent,
           width: 300,
           child: const Center(child: Text("View Others Rating")),
         ),
       ),
       ],

       ),

),

    ),
    )
    );
  }
}
