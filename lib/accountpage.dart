import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
class Accountpage extends StatelessWidget {
  Accountpage({super.key});

final ValueNotifier<bool>isFollow=ValueNotifier<bool>(false);
void toggleFollow(){
  isFollow.value=!isFollow.value;
}
  @override
  Widget build(BuildContext context) {
   var size =MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: Text('user id'),
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))
      ],),
      body: Column(
        children: [
           Row( spacing: 10,
            children: [
              InkWell(
                onTap: () {
                  
                },
                child: SizedBox(
                  width:size.width*0.2,height: size.height*0.2,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTb0159GaEnv-VkyrDiWafsyyAjzWu9ThZQIQ&s'),
                    
                  ),
                ),
              ), SizedBox(
                width: size.width*0.7,
                height: size.height*0.2,
                child: Column(
                  children: [
                    SizedBox(height: size.height*0.05,width: size.width*0.7,
                    child:Text('username',style: TextStyle(fontSize:size.height*0.02),) ,),
                    SizedBox(
                      height: size.height*0.07 ,width: size.width*0.7,
                      child: Row(children: [
                        SizedBox(
                          height: size.height*0.07 ,width: size.width*0.23,
                          child: Column(children: [
                            Text('121',style: TextStyle(fontSize:size.height*0.02),),
                            Text('post',style: TextStyle(fontSize:size.height*0.02),)
                          ],
                          ),
                        ),
                        SizedBox(
                          height: size.height*0.07 ,width: size.width*0.23,
                          child: Column(children: [
                            Text('121k',style: TextStyle(fontSize:size.height*0.02),),
                            Text('followers',style: TextStyle(fontSize:size.height*0.02),)
                          ],
                          ),
                        ),
                        SizedBox(
                          height: size.height*0.07 ,width: size.width*0.23,
                          child: Column(children: [
                            Text('121',style: TextStyle(fontSize:size.height*0.02),),
                            Text('following',style: TextStyle(fontSize:size.height*0.02),)
                          ],
                          ),
                        ),
                        

                      ],
                      ),
                    )
                  ],
                ),
              ),
            ],
           ),
           Text('about',style: TextStyle(fontSize:size.height*0.02),),
           Padding(
             padding: const EdgeInsets.all(10.0),
             child: Row( mainAxisAlignment:MainAxisAlignment.spaceAround ,
              children: [
                ValueListenableBuilder(
                  valueListenable: isFollow,
                  builder: (BuildContext context, following,_) {
                    return  SizedBox(width: 210,
                      child: ElevatedButton(onPressed: toggleFollow, child: Text(following?'follow':'following',style: TextStyle(fontSize:size.height*0.02),)),
                    );
                  },
                ),
               ElevatedButton(onPressed: (){}, child: Text('                   message                  ',style: TextStyle(fontSize:size.height*0.02),)
              
                ),
              ],
             ),
             
           ),Row(spacing: size.width*0.1,
              children: [
              SizedBox(width: size.width*0.23,height: size.height*0.2,
              child: IconButton(onPressed: (){}, icon: Icon(Icons.grid_on))
              ),
              SizedBox(width: size.width*0.23,height: size.height*0.2,child: IconButton(onPressed: (){}, icon: Icon(Icons.play_arrow))),
              SizedBox(width: size.width*0.23,height: size.height*0.2,child:IconButton(onPressed: (){}, icon: Icon(Icons.person_2_outlined))),
             ],
             ),
           
        ],
      ),
    );
  } 
}