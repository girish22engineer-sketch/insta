import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/accountpage.dart';
import 'package:flutter_application_1/messagepage.dart';
import 'package:flutter_application_1/notificationpage.dart';
import 'package:flutter_application_1/story/story.dart';
import 'post/post.dart';
import 'package:get/get.dart';


class Homepage extends StatelessWidget {
   const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Material(
      color: Colors.black,
      child: 
      ListView(
      
          children: [
          
              
         SizedBox(
          height: size.height*0.32,
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
            
            Post(profile: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTH274VBO8xBkASXrcRJohAF75nFdh-Vwm9ig&s',
            accname: 'Velga',
            content: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgJhng02dkXeDzkxso3IeY1xvtzaF_YAMFcw&s',
            ),
            Post(profile: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTb0159GaEnv-VkyrDiWafsyyAjzWu9ThZQIQ&s',
            accname: 'surya engineering',
            content: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_xcEUfsnaChTZxK8iXwicv0ucQ_g8Xfew2Q&s',
            ),
        
     
            ],
        
      ),
    );
  }
}