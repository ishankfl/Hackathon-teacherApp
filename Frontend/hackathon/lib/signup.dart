import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
// import 'dart:convert';

void main() {
  runApp(SignupApp());
}

signup(name, email, password) async {
  print('Name: $name');
  print('Email: $email');
  print('Password: $password');

  String url = "http://192.168.1.86:8000/viewdata";
  var data = {'name': name, 'email': email, 'password': password};
  var uri = Uri.parse(url);
  var response = await http.post(uri, body: data);
  print(response.statusCode);
}

class SignupApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Signup App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignupPage(),
    );
  }
}

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Signup'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Name',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _confirmPasswordController,
              decoration: InputDecoration(
                labelText: 'Confirm Password',
              ),
              obscureText: true,
            ),
            SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () {
                String name = _nameController.text;
                String email = _emailController.text;
                String password = _passwordController.text;
                String confirmPassword = _confirmPasswordController.text;

                if (password == confirmPassword) {
                  signup(name, email, password);
                  // Passwords match, perform signup logic here
                } else {
                  // Passwords don't match
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Password Mismatch'),
                        content: Text('Please make sure the passwords match.'),
                        actions: [
                          TextButton(
                            child: Text('OK'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                }
              },
              child: Text('Signup'),
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacementNamed(context, '/login');
              },
              child: Text("Already logged in?"),
            )
          ],
        ),
      ),
    );
  }
}
