import 'package:first/adlogin.dart';
import 'package:first/admin.dart';
import 'package:first/user.dart';
import 'package:flutter/material.dart';
// Import the admin login page

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    ),
  );
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void loginUser() {
    if (_formKey.currentState!.validate()) {
      // Add your logic for user login here

      // For now, let's just navigate to the HomeScreen
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const user()),
      );
    }
  }

  void navigateToAdminLogin() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const adl()), // Navigate to admin login page
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     /* appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text("Login"),
      ),*/
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Login',
              style: TextStyle(
                fontSize: 35,
                color: Colors.blueGrey,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    // ... (existing code)

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: MaterialButton(
                        minWidth: double.infinity,
                        onPressed: loginUser,
                        child: const Text('Student Login'),
                        color: Colors.blue,
                        textColor: Colors.white,
                      ),
                    ),

                    // Add the Admin Login button
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
                      child: MaterialButton(
                        minWidth: double.infinity,
                        onPressed: navigateToAdminLogin,
                        child: const Text('Admin Login'),
                        color: Colors.teal, // Customize the color for admin login
                        textColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: const Center(
        child: Text("Welcome to the Home Screen!"),
      ),
    );
  }
}

class AdminLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Admin Login"),
      ),
      body: const Center(
        child: Text("Welcome to the Admin Login Page!"),
      ),
    );
  }
}
