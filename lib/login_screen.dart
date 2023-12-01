import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxfrom2/login_controller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: Form(
        key: controller.formKey,
        child: Padding(
          padding: EdgeInsets.all(30),
          child: ListView(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(),
                  hintText: 'Enter Email',
                ),
                validator: (email) => controller.validateEmail(email),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(),
                  hintText: 'Enter Password',
                ),
                validator: (pwd) => controller.validatePassword(pwd),
                obscureText: true, // for password input
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () => controller.onLogin(),
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
