import 'package:flutter/material.dart';
class profile extends StatelessWidget {
  const profile({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
    home:Scaffold(
      appBar: AppBar(
        title: Text("Your Profile"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            const Text(''),
            const Text(''),
            const Text(''),
            const Text(''),
            const Text(''),
            const Text(''),
            const SizedBox(
              height: 30,
            ),
            Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blueGrey,
              ),
              child: const Icon(
                Icons.person_rounded,
                color: Colors.white,
                size: 120,
              ),
            ),
            /*const Text(''),
            const Text(''),*/
            const SizedBox(
              height: 25,
            ),
            itemProfile('Name', "Anand", Icons.person),
            const SizedBox(
              height: 5,
            ),
            itemProfile('Phone No', "8148868976", Icons.phone),
            const SizedBox(height: 5,
            ),
            itemProfile('Gender', "Male", Icons.male),
            const SizedBox(height: 5,
            ),
            itemProfile('Room No', "E-56", Icons.door_front_door_sharp),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed:(){},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(15),
                  ),
                  child: const Text('edit profile')),
            ),
          ],
        ),
      ),
    )
    );

  }
  itemProfile(String title,String Subtitle,IconData iconData){
    return    Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0,5),
            color: Colors.blueAccent.withOpacity(.2),
            spreadRadius: 2,
            blurRadius: 10,

          ),
        ],
      ),
      child: ListTile(
        title: Text(title),
        subtitle:Text(Subtitle),
        leading: Icon(iconData),
        trailing: const Icon(Icons.arrow_forward_ios_sharp,color: Colors.purple,
        ),
        tileColor: Colors.pink,

      ),
    );
  }
}