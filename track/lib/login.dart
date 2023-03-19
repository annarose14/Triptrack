import 'package:flutter/material.dart';
import 'package:track/main.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  
  late String _email;
 late  String _password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 251, 228, 252),
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 20.0),
              TextFormField(
                 decoration:const InputDecoration(
                 labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
                onSaved: (value) {
               
                  _email =value as String;
                },
              ),
              const SizedBox(height: 20.0),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
                onSaved: (value) {
                  _password = value as String;
                },
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                child: const Text('Login'),
                onPressed: () {
                 
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
           Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
    return const Destination();
}));
                    // TODO: Perform login functionality
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

