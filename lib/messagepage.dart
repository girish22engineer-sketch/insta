import 'package:flutter/material.dart';
import 'package:flutter_application_1/homepage.dart';
import 'package:flutter_application_1/message/messages.dart';

import 'story/story.dart';
import 'package:get/get.dart';

class Messagepage extends StatelessWidget {
  const Messagepage({super.key});

  @override
  Widget build(BuildContext context) {
    var size =MediaQuery.of(context).size;
    return Scaffold(backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column( spacing: 10,
          children: [
            Row( 
              children: [
                IconButton(
                  onPressed: (){
                  Get.to(Homepage());
                },
                 icon: Icon(Icons.arrow_back,color: Colors.white,size: 30,)),
                Expanded(
                  child: Row(
                    children: [
                      Text('user id ',
                           style: TextStyle(
                            color: Colors.white),
                            ),
                  
                      PopupMenuButton(
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,color: Colors.white),
                         itemBuilder: (context)=>[
                          PopupMenuItem(child: Text('velga official')),
                            PopupMenuItem(child: Text('velga family'))
                        ]
                        ),
                        Spacer(),
                   IconButton(onPressed: (){}, icon: Icon(Icons.smart_toy_outlined,color: Colors.white,)),
                      IconButton(onPressed: (){}, icon: Icon(Icons.note_alt_outlined,color: Colors.white,))
                    ],
                    
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: SizedBox( 
                height: 48,
                child: SearchBar(
                  hintText: 'Ask Meta AI or Search',
                  
                ),
              ),
            ),
             Padding(
               padding: const EdgeInsets.all(5.0),
               child: SizedBox(
                         height: 120,
                  child: 
                       
                      ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                      Story(yourstory: 'dhanush',image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTb0159GaEnv-VkyrDiWafsyyAjzWu9ThZQIQ&s',),
                    
                    Story(yourstory: 'siva',image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSumxRUib40d9nGJinvbap8wganMWrmA_SOQQ&s',),
                     Story(yourstory: 'logu',image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJPpj0S8YQh_2NKpGxMD35na5Ql9Xdeftc1A&s',),
                    Story(yourstory: 'velga',image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHXB-nP3eWXxawpGJNltcuwjuCK6vzHxnzbQ&s',),
                    Story(yourstory: 'egnesh',image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKAamFgOgNtmpuPBVncHVC-AJALeVJB0LyvQ&s',),
                    Story(yourstory: 'dhanush',image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSumxRUib40d9nGJinvbap8wganMWrmA_SOQQ&s',),
                    Story(yourstory: 'dhanush',image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSumxRUib40d9nGJinvbap8wganMWrmA_SOQQ&s',)
                      
                    ],
                  )
                  ,
                      ),
             ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 4),
                        child: Text('messages',style: TextStyle(color: Colors.white),),
                      ),
                      InkWell(
                        onTap: () {
                          
                        },
                        child: Text('Request',style: TextStyle(color: Colors.blue),)),
                    ],
                  ),
                ),
                Messages(uname: 'dhanush',dp: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTb0159GaEnv-VkyrDiWafsyyAjzWu9ThZQIQ&s',),
                    
                 Messages(uname: 'siva',dp: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSumxRUib40d9nGJinvbap8wganMWrmA_SOQQ&s',),
                  Messages(uname: 'logu',dp: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJPpj0S8YQh_2NKpGxMD35na5Ql9Xdeftc1A&s',),
                   Messages(uname: 'praveen',dp: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSumxRUib40d9nGJinvbap8wganMWrmA_SOQQ&s',)
                    
              
          ],
        ),
      ),
    );
  }
}