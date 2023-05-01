import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:social_media/constants/colors.dart';
import 'package:social_media/resources/auth_methods.dart';
import 'package:social_media/utils/text_input.dart';
import 'package:social_media/utils/utils.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _bioController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  Uint8List? _image;

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _usernameController.dispose();
    _passController.dispose();
    _bioController.dispose();
  }

  void selectImage() async {
    Uint8List im = await pickImage(ImageSource.gallery);

    setState(() {
      _image = im;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 60,
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
                  height: 40,
                ),
                Stack(
                  children: [
                    _image != null
                        ? CircleAvatar(
                            radius: 64, backgroundImage: MemoryImage(_image!))
                        : CircleAvatar(
                            radius: 64,
                            backgroundImage: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvrfi6fs9h09rEEkSRPckTTuw7bnu7h8eMYA&usqp=CAU'),
                          ),
                    Positioned(
                      left: 80,
                      bottom: -10,
                      child: IconButton(
                        onPressed: selectImage,
                        icon: Icon(
                          Icons.add_a_photo,
                          color: Colors.black87,
                        ),
                      ),
                    )
                  ],
                ),
                TextInput(
                  textEditingController: _usernameController,
                  hintText: "Enter Username",
                  textInputType: TextInputType.text,
                  labelText: "Username:",
                ),
                const SizedBox(
                  height: 24,
                ),
                TextInput(
                  textEditingController: _bioController,
                  hintText: "Enter bio",
                  textInputType: TextInputType.text,
                  labelText: "Bio:",
                ),
                const SizedBox(
                  height: 24,
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
                const SizedBox(height: 50),
                InkWell(
                  onTap: () async {
                    String res = await AuthMethods().signUpUser(
                        email: _emailController.text,
                        password: _passController.text,
                        username: _usernameController.text,
                        bio: _bioController.text,
                        file: _image!);
                    print(res);
                  },
                  child: Container(
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
                ),
                // Flexible(
                //   flex: 1,
                //   child: Container(),
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: const Text("I have an Account. "),
                      padding: const EdgeInsets.symmetric(vertical: 8),
                    ),
                    Container(
                      child: const Text(
                        "Log In",
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
      ),
    );
  }
}
