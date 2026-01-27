// import 'package:bootstrap_icons/bootstrap_icons.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// class Commentpage extends StatelessWidget {
//    Commentpage({super.key});
//   final ValueNotifier<bool>isliked =ValueNotifier<bool>(false);
//   final ValueNotifier<int>likecount =ValueNotifier<int>(0);
//     void toggleLike() {
//     isliked.value = !isliked.value;
//     if (isliked.value) {
//       likecount.value++;
//     } else {
//       likecount.value--;
//     }
//   }
//   @override
//   Widget build(BuildContext context) {
//     var size =MediaQuery.of(context).size;
//     return SafeArea(
//       child: 
//      SingleChildScrollView(
//        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           IconButton(onPressed: (){Get.back();}, icon: const Icon(Icons.arrow_back, color: Colors.white)),
//           Container(
         
//             height: 80,width: size.width*1,
//           decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)
//           ), color: Colors.black,
//           ),
//             child: Row(spacing: 10,
//               children: [
//                 Container(
//                   height: size.height*019,
//                   width: size.width*0.2,
//                   child: CircleAvatar(radius: 50,),
//                 ),
          
//                    Container(
//                     child: Column(crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text('your id',style: TextStyle(color: Colors.white),),
//                         Text('your comments',style: TextStyle(color: Colors.white),),
//                         InkWell(
//                           onTap: (){},
//                          child:  Text('replay',style: TextStyle(color: Colors.grey),))
//                       ],
//                     ),
//                   height: size.height*0.19,
//                   width:size.width*0.6,
//                 ),   Container(
//                   child: Row(
//                     children: [
//                        ValueListenableBuilder( 
//                          valueListenable: isliked,
//                          builder: (context, liked, _) {
//                            return  IconButton(
//                             onPressed: toggleLike,
//                             icon:Icon( liked ? BootstrapIcons.heart_fill : BootstrapIcons.heart,
//                         color: liked ? Colors.red : Colors.white,),
//                            );
//                          },
//                        ),
//                        ValueListenableBuilder<int>(
//                          valueListenable:  likecount,
//                          builder: (context, count,_) {
//                            return  Text('$count',style: TextStyle(color: Colors.white),);
//                          },
//                        ),
//                     ],
//                   ),
                  
                  
//                 )
//               ],
//             ),
          
//               ),Container(
//                 color: Colors.black,
//                 width: size.width*1,
//                 height: size.height*1,
//               )
//         ]
//        ),
//      ),
     

          
//     );
//   }
// }


import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Commentpage extends StatelessWidget {
  Commentpage({super.key});

  final ValueNotifier<bool> isLiked = ValueNotifier(false);
  final ValueNotifier<int> likeCount = ValueNotifier(0);

  void toggleLike() {
    isLiked.value = !isLiked.value;
    likeCount.value += isLiked.value ? 1 : -1;
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            /// 🔙 Back button
            Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                onPressed: () => Get.back(),
                icon: const Icon(Icons.arrow_back, color: Colors.white),
              ),
            ),

            /// 🗨️ Comment list (scrollable)
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                itemCount: 10, // demo comments
                itemBuilder: (context, index) {
                  return _commentItem(size);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// 🧩 Single comment item (responsive)
  Widget _commentItem(Size size) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// 👤 Avatar
          CircleAvatar(
            radius: size.width < 500 ? 18 : 22,
            backgroundColor: Colors.grey,
          ),

          const SizedBox(width: 10),

          /// 💬 Comment text
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'your id',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'your comments go here. This text wraps properly on all screens.',
                  style: TextStyle(color: Colors.white70),
                ),
                SizedBox(height: 6),
                Text(
                  'reply',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ],
            ),
          ),

          /// ❤️ Like button
          Column(
            children: [
              ValueListenableBuilder<bool>(
                valueListenable: isLiked,
                builder: (_, liked, __) {
                  return IconButton(
                    onPressed: toggleLike,
                    icon: Icon(
                      liked
                          ? BootstrapIcons.heart_fill
                          : BootstrapIcons.heart,
                      color: liked ? Colors.red : Colors.white,
                      size: 18,
                    ),
                  );
                },
              ),
              ValueListenableBuilder<int>(
                valueListenable: likeCount,
                builder: (_, count, __) {
                  return Text(
                    '$count',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
