import 'package:flutter/material.dart';
import 'package:social_media/constants/colors.dart';
import 'package:social_media/utils/text_input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                flex: 1,
                child: Container(),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Social Stud",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 21),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Become a SOCIO STUD member",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              TextInput(
                textEditingController: _emailController,
                hintText: "Enter Email",
                textInputType: TextInputType.text,
                labelText: "Email:",
              ),
              const SizedBox(
                height: 24,
              ),
              TextInput(
                textEditingController: _passController,
                hintText: "Enter Password",
                textInputType: TextInputType.text,
                isPass: true,
                labelText: "Password: ",
              ),
              Flexible(
                flex: 1,
                child: Container(),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: const Text(
                    "Join Me",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                width: double.infinity,
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 12),
                decoration: const ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  color: shasPrimaryColor,
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: const Text("Don't have an account? "),
                    padding: const EdgeInsets.symmetric(vertical: 8),
                  ),
                  Container(
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 8),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
