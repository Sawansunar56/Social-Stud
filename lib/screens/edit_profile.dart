import 'package:flutter/material.dart';
import 'package:social_media/utils/header_text.dart';

import '../constants/colors.dart';

class EditProfile extends StatelessWidget {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _bioController = TextEditingController();
  EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              HeaderText(givenText: "Edit Profile"),
              SizedBox(height: 40.0),
              TextField(
                keyboardType: TextInputType.multiline,
                minLines: 1,
                maxLines: 5,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 10.0),
                    fillColor: chatTextFieldColor,
                    filled: true,
                    labelText: "Full Name",
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 0.0, style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(10.0))),
                controller: _nameController,
              ),
              SizedBox(height: 40.0),
              TextField(
                keyboardType: TextInputType.multiline,
                minLines: 1,
                maxLines: 5,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 10.0),
                    fillColor: chatTextFieldColor,
                    filled: true,
                    labelText: "username",
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 0.0, style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(10.0))),
                controller: _usernameController,
              ),
              SizedBox(height: 40.0),
              TextField(
                keyboardType: TextInputType.multiline,
                minLines: 1,
                maxLines: 5,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 10.0),
                    fillColor: chatTextFieldColor,
                    filled: true,
                    labelText: "bio",
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 0.0, style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(10.0))),
                controller: _bioController,
              ),
              Expanded(child: Text("")),
              ElevatedButton(
                onPressed: () {},
                child: Text("ehello"),
                style: ElevatedButton.styleFrom(
                  primary: shasPrimaryColor,
                  minimumSize: const Size.fromHeight(50),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
