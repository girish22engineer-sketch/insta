import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Accountpage extends StatelessWidget {
  Accountpage({super.key});

  final ValueNotifier<bool> isFollow = ValueNotifier(false);

  void toggleFollow() {
    isFollow.value = !isFollow.value;
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          height: size.height,
          color: Colors.black,
          padding: EdgeInsets.all(size.width*0.04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [IconButton(onPressed: (){Get.back();}, icon: Icon(Icons.arrow_back))],),
              /// Profile Row
              Row(
                children: [
                  CircleAvatar(
                    radius: size.width*0.12,
                    backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTb0159GaEnv-VkyrDiWafsyyAjzWu9ThZQIQ&s',
                    ),
                  ),

                   SizedBox(width:size.width*0.05),

                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        _ProfileCount(title: 'Posts', count: '121'),
                        _ProfileCount(title: 'Followers', count: '121k'),
                        _ProfileCount(title: 'Following', count: '121'),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: size.height*0.015),

               Text(
                'username',
                style: TextStyle(color: Colors.white,
                 fontSize:size.width*0.045,
                 fontWeight: FontWeight.bold,
                 ),
              ),

             SizedBox(height: size.height*0.006),

               Text(
                'about',
                style: TextStyle(color: Colors.white70,
                 fontSize:size.width*0.035,
                  ),
              ),

              SizedBox(height: size.height*0.02),

              /// Buttons
              Row(
                children: [
                  Expanded(
                    child: ValueListenableBuilder(
                      valueListenable: isFollow,
                      builder: (_, following, __) {
                        return ElevatedButton(
                          onPressed: toggleFollow,
                          child: Text(
                            following ? 'Following' : 'Follow',
                          ),
                        );
                      },
                    ),
                  ),

                   SizedBox(width: size.width*0.03),

                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      child:  Text('Message',),
                    ),
                  ),
                ],
              ),

              SizedBox(height: size.height*0.03),

              /// Icons Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:  [
                  Icon(Icons.grid_on, color: Colors.white, size: size.width * 0.07,),
                  Icon(Icons.play_arrow, color: Colors.white, size: size.width * 0.07,),
                  Icon(Icons.person_2_outlined, color: Colors.white, size: size.width * 0.07,),
                ],
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}


class _ProfileCount extends StatelessWidget {
  final String title;
  final String count;

  const _ProfileCount({required this.title, required this.count});

  @override
  Widget build(BuildContext context) {
      final size = MediaQuery.of(context).size;
    return Column(
      children: [
              Text(
          count,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: size.width * 0.04, 
          ),
        ),
        Text(
          title,
          style: TextStyle(
            color: Colors.white70,
            fontSize: size.width * 0.03,
          ),
        ),
      ],
    );
  }
}