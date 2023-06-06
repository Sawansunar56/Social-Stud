import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:uuid/uuid.dart';

class PostCreation extends StatelessWidget {
  final FirebaseAuth auth = FirebaseAuth.instance;
  XFile? image;
  PostCreation({super.key});

  Future<void> addPost() async {
    final User? user = auth.currentUser;
    String image_url = await uploadImage();
    await FirebaseFirestore.instance.collection('posts').add({
      'userId': user?.uid,
      'likes': 0,
      'comments': [],
      'postImage': image_url,
    });
  }

  uploadImage() async {
    String image_url = "";
    if (image != null) {
      var imageFile = File(image!.path);
      String uniqueId = Uuid().v4();

      FirebaseStorage storage = FirebaseStorage.instance;
      Reference ref = storage.ref().child("Image-" + uniqueId);

      UploadTask uploadTask = ref.putFile(imageFile);
      await uploadTask.whenComplete(() async {
        var url = await ref.getDownloadURL();
        image_url = url.toString();
      }).catchError((onError) {
        print(onError);
      });
    }
    return image_url;
  }

  getImage() async {
    image = await ImagePicker().pickImage(source: ImageSource.gallery);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                getImage();
              },
              child: Text("Do it man")),
          ElevatedButton(
              onPressed: () {
                addPost();
              },
              child: Text("Dot it")),
        ],
      ),
    );
  }
}
