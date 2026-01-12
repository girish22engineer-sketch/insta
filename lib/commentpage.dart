import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
class Commentpage extends StatelessWidget {
   Commentpage({super.key});
  final ValueNotifier<bool>isliked =ValueNotifier<bool>(false);
  final ValueNotifier<int>likecount =ValueNotifier<int>(0);
    void toggleLike() {
    isliked.value = !isliked.value;
    if (isliked.value) {
      likecount.value++;
    } else {
      likecount.value--;
    }
  }
  @override
  Widget build(BuildContext context) {
    var size =MediaQuery.of(context).size;
    return Scaffold(
      body:
     SingleChildScrollView(
       child: Column(
        children: [
          Container(
         
            height: 80,width: size.width*1,
          decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)
          ), color: Colors.black,
          ),
            child: Row(spacing: 10,
              children: [
                Container(
                  height: size.height*019,
                  width: size.width*0.2,
                  child: CircleAvatar(radius: 50,),
                ),
          
                   Container(
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('your id',style: TextStyle(color: Colors.white),),
                        Text('your comments',style: TextStyle(color: Colors.white),),
                        InkWell(
                          onTap: (){},
                         child:  Text('replay',style: TextStyle(color: Colors.grey),))
                      ],
                    ),
                  height: size.height*0.19,
                  width:size.width*0.6,
                ),   Container(
                  child: Row(
                    children: [
                       ValueListenableBuilder( 
                         valueListenable: isliked,
                         builder: (context, liked, _) {
                           return  IconButton(
                            onPressed: toggleLike,
                            icon:Icon( liked ? BootstrapIcons.heart_fill : BootstrapIcons.heart,
                        color: liked ? Colors.red : Colors.white,),
                           );
                         },
                       ),
                       ValueListenableBuilder<int>(
                         valueListenable:  likecount,
                         builder: (context, count,_) {
                           return  Text('$count',style: TextStyle(color: Colors.white),);
                         },
                       ),
                    ],
                  ),
                  
                  
                )
              ],
            ),
          
              ),Container(
                color: Colors.black,
                width: size.width*1,
                height: size.height*1,
              )
        ]
       ),
     ),
     

          
    );
  }
}