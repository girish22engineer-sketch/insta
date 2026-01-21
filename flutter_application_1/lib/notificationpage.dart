import 'package:flutter/material.dart';
import 'package:flutter_application_1/message/messages.dart';
import 'package:get/get.dart';

import 'homepage.dart';
class Notificationpage extends StatelessWidget {
  const Notificationpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading:  IconButton(onPressed: (){
                Get.to(Homepage());
              }, icon: Icon(Icons.arrow_back,color: Colors.white,size: 30,)),
        title: Text('Notification',style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        children: [
          Messages(uname: 'dhanush',dp: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTb0159GaEnv-VkyrDiWafsyyAjzWu9ThZQIQ&s',),
                  
               Messages(uname: 'siva',dp: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSumxRUib40d9nGJinvbap8wganMWrmA_SOQQ&s',),
                Messages(uname: 'logu',dp: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJPpj0S8YQh_2NKpGxMD35na5Ql9Xdeftc1A&s',),
                 Messages(uname: 'praveen',dp: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSumxRUib40d9nGJinvbap8wganMWrmA_SOQQ&s',)
        ],
      ),
    );
  }
}