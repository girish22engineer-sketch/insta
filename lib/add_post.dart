

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddPost extends StatefulWidget {
  const AddPost({super.key});

  @override
  State<AddPost> createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {
  final ImagePicker picker = ImagePicker();
  File? _image;

  Future<void> _getImageFromGallery() async {
    final XFile? image =
        await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() => _image = File(image.path));
    }
  }

  Future<void> _getImageFromCamera() async {
    final XFile? image =
        await picker.pickImage(source: ImageSource.camera);
    if (image != null) {
      setState(() => _image = File(image.path));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black, // ✅ IMPORTANT
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Header
              Row(
                children: const [
                  SizedBox(width: 48),
                  Spacer(),
                  Text(
                    'Add Post',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Icon(Icons.settings_suggest_outlined, color: Colors.white),
                  SizedBox(width: 12),
                ],
              ),

              const SizedBox(height: 10),

              // Camera & Gallery
              Row(
                children: [
                  IconButton(
                    onPressed: _getImageFromCamera,
                    icon: const Icon(Icons.camera_alt_outlined,
                        color: Colors.white),
                  ),
                  IconButton(
                    onPressed: _getImageFromGallery,
                    icon: const Icon(Icons.photo_library,
                        color: Colors.white),
                  ),
                ],
              ),

              // Image Preview
              if (_image != null)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.file(
                    _image!,
                    width: double.infinity,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                ),

              // Drafts / Template
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: const [
                    Icon(Icons.add_card_sharp, color: Colors.white),
                    SizedBox(width: 5),
                    Text("Drafts",
                        style: TextStyle(color: Colors.white)),
                    Spacer(),
                    Icon(Icons.add_box_outlined, color: Colors.white),
                    SizedBox(width: 5),
                    Text("Template",
                        style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),

              // Recent
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: const [
                    Text(
                      "Recent",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.arrow_drop_down, color: Colors.white),
                    Spacer(),
                    Icon(Icons.copy, color: Colors.white),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
