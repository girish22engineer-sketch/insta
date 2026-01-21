// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import 'loginpage.dart';
// class Registerpage extends StatelessWidget {
//    Registerpage({super.key});

//    final FirebaseAuth authService = FirebaseAuth.instance;

//    TextEditingController emailcontroller =TextEditingController();
//   TextEditingController passwordcontroller =TextEditingController();
//   final formkey = GlobalKey<FormState>();
//   String errormessage ="";
  
//   void registerpage ()async {
//     try {
//       await authService.createUserWithEmailAndPassword(
//         email:emailcontroller.text,
//         password :passwordcontroller.text,
//       );
//       Get.to(Loginpage());
//     }on FirebaseAuthException catch(e){
//       print(e.message);
//     }
//   }


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(child: Column(children: [
//           TextFormField(
            
//           decoration: InputDecoration(labelText: 'username'),
//         ),
//         TextFormField(
//           decoration: InputDecoration(labelText: 'email'),
//           controller: emailcontroller,
//         ),
//         TextField(decoration: InputDecoration(labelText:'password' ),
//         controller: passwordcontroller,
//         ),

//         // ElevatedButton(onPressed: (){}, child: Text('register'))
//                   ElevatedButton(
//   onPressed: () {
//     if (formkey.currentState!.validate()) {
//       registerpage();
//     }
//   },
//   child: Text('Create account'),
// )
//       ],),),
//     );
//   }
// }









import 'package:flutter/material.dart';

import 'auth_services.dart';
import 'loginpage.dart';

class Registerpage extends StatelessWidget {
  Registerpage({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final AuthServices auth = AuthServices(); // ✅ use AuthServices

  Future<void> registerUser(BuildContext context) async {
    try {
      await auth.createAccount(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => Loginpage()),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("❌ Registration failed: $e")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: usernameController,
                  decoration: const InputDecoration(labelText: 'Username'),
                  validator: (value) =>
                      value!.isEmpty ? "Enter a username" : null,
                ),
                TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(labelText: 'Email'),
                  validator: (value) =>
                      value!.isEmpty ? "Enter an email" : null,
                ),
                TextFormField(
                  controller: passwordController,
                  decoration: const InputDecoration(labelText: 'Password'),
                  obscureText: true,
                  validator: (value) =>
                      value!.length < 6 ? "Min 6 characters" : null,
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      registerUser(context);
                    }
                  },
                  child: const Text('Create Account'),
                ),
                SizedBox(height: 30),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (_) => Loginpage()),
                    );
                  },
                  child: Text('Already have an account? Login'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}



