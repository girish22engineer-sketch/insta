// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'dart:async';
// import 'dart:io';

// class ImagePickerPage extends StatefulWidget {
//   const ImagePickerPage({super.key});

//   @override
//   State<ImagePickerPage> createState() => _ImagePickerState();
// }

// class _ImagePickerState extends State<ImagePickerPage> {
//   final ImagePicker picker = ImagePicker();
//    File? _image;

//   Future<void> _getImageFromGallery()async{
//     final XFile? galleryImage = await picker.pickImage(source:ImageSource.gallery);
//     if (galleryImage != null) {
//       setState(() {
//         _image = File(galleryImage.path);
//       }
//       );
//     }else{
//       print("No image selected");
//     }
//   }

//   Future<void> _getImageFromCamera() async{
//     final XFile? cameraImage = await picker.pickImage(source:ImageSource.camera);
//     if (cameraImage != null) {
//       setState(() {
//         _image = File(cameraImage.path);
//       });
//   }else{
//       print("No image captured");
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Center(
//             child: Container(
//               height: 300,
//               width: double.infinity,
//               child: _image == null? Text ("select image"): Image.file(_image!),
//             )
//           ),
//           ElevatedButton(
//             onPressed: _getImageFromGallery,
//             child: Text("Pick from Gallery"),
//           ),
//           ElevatedButton(
//             onPressed: _getImageFromCamera,
//             child: Text("Pick from Camera"),
//           ),  
//         ],
//       ),
//     );
//   }
// }


// import 'dart:io';
// import 'package:flutter/material.dart';

// import 'package:get/get.dart';
// import 'package:image_picker/image_picker.dart';

// class Add_Post extends StatefulWidget {
//   const Add_Post({super.key});

//   @override
//   State<Add_Post> createState() => _AddPostState();
// }

// class _AddPostState extends State<Add_Post> {
//   final ImagePicker picker = ImagePicker();
//   File? _image;

//   // Pick image from gallery
//   Future<void> _getImageFromGallery() async {
//     final XFile? galleryImage =
//         await picker.pickImage(source: ImageSource.gallery);
//     if (galleryImage != null) {
//       setState(() {
//         _image = File(galleryImage.path);
//       });
//     } else {
//       print("No image selected");
//     }
//   }

//   // Pick image from camera
//   Future<void> _getImageFromCamera() async {
//     final XFile? cameraImage =
//         await picker.pickImage(source: ImageSource.camera);
//     if (cameraImage != null) {
//       setState(() {
//         _image = File(cameraImage.path);
//       });
//     } else {
//       print("No image captured");
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return  SafeArea(
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               // Top header
//               SizedBox(
//                 child: Row(
//                   children: [
//                     IconButton(
//                       icon: const Icon(Icons.close, color: Colors.white),
//                       onPressed: () {
//                         Get.back();
//                       },
//                     ),
//                     Spacer(),
//                     const Text(
//                       'Add Post',
//                       style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold),
//                     ),
//                     Spacer(),
//                     IconButton(
//                       onPressed: () {},
//                       icon: Icon(Icons.settings_suggest_outlined),
//                       color: Colors.white,
//                     ),
//                   ],
//                 ),
//               ),

//               // Camera & Gallery buttons
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Row(
//                   children: [
//                     IconButton(
//                       onPressed: _getImageFromCamera,
//                       icon: Icon(Icons.camera_alt_outlined, color: Colors.white),
//                     ),
//                     SizedBox(width: 20),
//                     IconButton(
//                       onPressed: _getImageFromGallery,
//                       icon: Icon(Icons.photo_library, color: Colors.white),
//                     ),
//                   ],
//                 ),
//               ),

//               // Show selected image
//               if (_image != null)
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Image.file(
//                     _image!,
//                     width: double.infinity,
//                     height: 250,
//                     fit: BoxFit.cover,
//                   ),
//                 ),

//               // Drafts / Template section
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Row(
//                   children: [
//                     Icon(Icons.add_card_sharp, color: Colors.white),
//                     SizedBox(width: 4),
//                     Text(
//                       "Drafts",
//                       style: TextStyle(color: Colors.white),
//                     ),
//                     Spacer(),
//                     Icon(Icons.add_box_outlined, color: Colors.white),
//                     SizedBox(width: 4),
//                     Text(
//                       "Template",
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   ],
//                 ),
//               ),

//               // Recent header
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Row(
//                   children: [
//                     Text(
//                       "Recent",
//                       style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 18,
//                           fontWeight: FontWeight.bold),
//                     ),
//                     IconButton(
//                       onPressed: () {},
//                       icon: Icon(Icons.arrow_drop_down_outlined),
//                       color: Colors.white,
//                     ),
//                     Spacer(),
//                     IconButton(
//                       onPressed: () {},
//                       icon: Icon(Icons.copy),
//                       color: Colors.white,
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
      
//     );
//   }
// }

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
