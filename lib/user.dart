import 'package:first/temp.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: user(),
  ));
}

class user extends StatefulWidget {
  const user({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<user> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void Login() {
    if (_formKey.currentState!.validate()) {
      if(_emailController!=null) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HApp()),
        );
      }}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Login"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Login',
              style: TextStyle(
                fontSize: 35,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        controller: _emailController,
                        decoration: const InputDecoration(
                          labelText: 'Email',
                          hintText: 'Enter Email',
                          prefixIcon: Icon(Icons.email),
                          border: OutlineInputBorder(),
                        ),
                        onChanged: (String value){

                        },
                        validator: (value) {
                          if (value == null || value.isEmpty || value.length <8) {
                            return 'Please enter valid email';
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        obscureText: true,
                        controller: _passwordController,
                        decoration: const InputDecoration(
                          labelText: 'Password',
                          hintText: 'Enter Password',
                          prefixIcon: Icon(Icons.lock),
                          border: OutlineInputBorder(),
                        ),
                        onChanged: (String value){

                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter password';
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: MaterialButton(
                        minWidth: double.infinity,
                        onPressed:(){
                          Navigator.push(context,MaterialPageRoute(builder:(context)=>HApp()));
                        },
                        child: const Text('Login'),
                        color: Colors.blue,
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

