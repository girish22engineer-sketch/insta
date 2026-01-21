// import 'package:flutter/material.dart';

// import 'package:firebase_auth/firebase_auth.dart';

// import 'package:firebase_core/firebase_core.dart';

// class MyFirebaseStoryPage extends StatefulWidget {
//   const MyFirebaseStoryPage({super.key});

//   @override
//   State<MyFirebaseStoryPage> createState() => _MyFirebaseStoryPageState();
// }

// class _MyFirebaseStoryPageState extends State<MyFirebaseStoryPage> {
//   final _captionController = TextEditingController();
//   final _auth = FirebaseAuth.instance;

//   DocumentSnapshot? _story;
//   @override
//   void initState() {
//     super.initState();
//     _initializeFirebaseAndLoadStory();
//   }

//   Future<void> _initializeFirebaseAndLoadStory() async {
//     await Firebase.initializeApp();
//     await _loadStory();
//   }

//   Future<void> _loadStory() async {
//     final user = _auth.currentUser;
//     if (user == null) return;

//     final doc = await FirebaseFirestore.instance.collection('stories').doc(user.uid).get();
//     setState(() {
//       _story = doc.exists ? doc : null;
//     });
//   }

//   Future<void> _addStory() async {
//     final caption = _captionController.text.trim();
//     if (caption.isEmpty) return;

//     final user = _auth.currentUser;
//     if (user == null) return;

//     await FirebaseFirestore.instance.collection('stories').doc(user.uid).set({
//       'username': user.displayName ?? 'Anonymous',
//       'caption': caption,
//       'createdAt': FieldValue.serverTimestamp(),
//     });

//     _captionController.clear();
//     await _loadStory();
//   }

//   Future<void> _deleteStory() async {
//     final user = _auth.currentUser;
//     if (user == null) return;

//     await FirebaseFirestore.instance.collection('stories').doc(user.uid).delete();
//     setState(() {
//       _story = null;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     final user = _auth.currentUser;

//     return Scaffold(
//       appBar: AppBar(
//         title: Text("My Story"),
//         backgroundColor: Colors.black,
//         actions: [
//           IconButton(
//             icon: Icon(Icons.logout),
//             onPressed: () async {
//               await FirebaseAuth.instance.signOut();
//             },
//           )
//         ],
//       ),
//       backgroundColor: Colors.black,
//       body: user == null
//           ? Center(child: Text("Not logged in", style: TextStyle(color: Colors.white)))
//           : Padding(
//               padding: const EdgeInsets.all(16),
//               child: Center(
//                 child: _story == null
//                     ? Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Text("No story yet.", style: TextStyle(color: Colors.white)),
//                           SizedBox(height: 20),
//                           TextField(
//                             controller: _captionController,
//                             style: TextStyle(color: Colors.white),
//                             decoration: InputDecoration(
//                               hintText: "Enter caption",
//                               hintStyle: TextStyle(color: Colors.grey),
//                               border: OutlineInputBorder(),
//                             ),
//                           ),
//                           SizedBox(height: 10),
//                           ElevatedButton(
//                             onPressed: _addStory,
//                             child: Text("Add Story"),
//                           )
//                         ],
//                       )
//                     : Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Text("Username: ${_story!['username']}", style: TextStyle(color: Colors.white)),
//                           SizedBox(height: 10),
//                           Text("Caption: ${_story!['caption']}", style: TextStyle(color: Colors.white70)),
//                           SizedBox(height: 20),
//                           ElevatedButton(
//                             onPressed: _deleteStory,
//                             style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
//                             child: Text("Delete Story"),
//                           )
//                         ],
//                       ),
//               ),
//             ),
//     );
//   }
// }
