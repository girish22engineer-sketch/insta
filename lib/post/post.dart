// import 'package:bootstrap_icons/bootstrap_icons.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/accountpage.dart';
// import 'package:flutter_application_1/commentpage.dart';
// import 'package:flutter_application_1/story/story.dart';
// import 'package:get/get.dart';

// class Post extends StatelessWidget {
//   final String profile;
//   final String accname;
//   final String content;
//    Post({super.key,
//    required this.profile,
//    required this.accname,
//    required this.content
   
//    });
//     final ValueNotifier<bool> isSave = ValueNotifier<bool>(false);
//      final ValueNotifier<bool> isLiked = ValueNotifier<bool>(false);
//   final ValueNotifier<int> likeCount = ValueNotifier<int>(0); // default
//   final ValueNotifier<bool> isFollow =ValueNotifier<bool>(false);
//   final ValueNotifier<bool>isMute=ValueNotifier<bool>(false);
//   void toggleMute(){
//     isMute.value=!isMute.value;
//   }
//   void toggleFollow(){
//     isFollow.value=!isFollow.value;
//   } 
//   void toggleSave(){
//     isSave.value=!isSave.value;
    
//   }

//   void toggleLike() {
//     isLiked.value = !isLiked.value;
//     if (isLiked.value) {
//       likeCount.value++;
//     } else {
//       likeCount.value--;
//     }
//   }
      
//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     return Column(
//       children: [
//         Padding(
//           padding:  EdgeInsets.all(
//             size.width*0.01),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//                   SizedBox(
//                       width: size.width*0.1,
//                       height: size.height*0.1,
//                        child: InkWell(
//                         onTap: () {
                          
//                         },
//                          child: InkWell(onTap: () {
//                            Get.to(Accountpage());
//                          },
//                            child: CircleAvatar(
//                               radius: size.height*0.05,
//                              child: Image.network(profile,),
//                 ),
                                  
//                            ),
//                          ),
//                        ),
                    
//               SizedBox(
//                 width: size.width*0.4,
//                       height: size.height*0.1,
//                 child:  InkWell(
//                     onTap: () {
//                       Get.to(Accountpage());
//                     },
//                     child: Padding(
//                       padding:  EdgeInsets.all(
//                         size.height*0.02),
//                       child: Text(accname, style: TextStyle(color: Colors.white,fontSize: size.height*0.03),textAlign: TextAlign.center,),
//                     ),
//                     ),
//                 ),
              
//               SizedBox(
//                 height: size.height*0.06,
//                 width: size.width*0.26,
//                 child: ValueListenableBuilder(
//                   valueListenable: isFollow,
//                   builder: (context, following, _) {
//                     return  ElevatedButton(
//                       onPressed: toggleFollow,
//                       style: ElevatedButton.styleFrom(
//                         shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(8)),
                        
                        
//                       ),child: Text(following?'following':'follow'),
//                     );
//                   },
//                 ),
//               ),

//               SizedBox(
//                  width: size.width*0.1,
//                                height: size.height*0.1,
//                 child: PopupMenuButton(
//                   icon: Icon(Icons.more_vert, color: Colors.white),
//                   itemBuilder: (context)=>[
//                   PopupMenuItem(child: Text('about'),
//                   ),PopupMenuItem(child: Text('why are you seeing this')
//                   ),PopupMenuItem(child: Text('about instagram add')),
//                   PopupMenuItem(child: Text('intersted')),
//                   PopupMenuItem(child: Text('Not intersted')),
//                   PopupMenuItem(child: Text('Report ad',style: TextStyle(color: Colors.deepOrange),))
                  
          
                 
//                 ]
//                 )
//               )
//             ],
//           ),
//         ),
//         InkWell(
//           onTap: () {
            
//           },
//           child: SizedBox(
//               width: size.width*1,
//                              height: size.height*0.5,
//            child: Stack(
//             children: [
              
//                 Positioned.fill(
//                   child: Image.network(content,fit: BoxFit.fill,)),
//                 Positioned(
//                   right: 30,bottom: 30,
//                  child: ValueListenableBuilder(
//                    valueListenable: isMute,
//                    builder: (
//                     BuildContext context, Muted, _) {
//                      return  InkWell(
//                       onTap: toggleMute,
//                       child: Icon(Muted?Icons.volume_off_outlined:Icons.volume_down, color: Colors.white,),
//                      );
//                    },
//                  ),
//                   )
//             ],
//            ),
//             ),
//            ),
        
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Row(spacing: 20,
//             children: [
//                  ValueListenableBuilder<bool>(
//                 valueListenable: isLiked,
//                 builder: (context, liked, _) {
//                   return InkWell(
//                     onTap: toggleLike,
//                     child: Icon(
//                       liked ? BootstrapIcons.heart_fill : BootstrapIcons.heart,
//                       color: liked ? Colors.red : Colors.white,
//                     ),
//                   );
//                 },
//               ),
              
              
//               ValueListenableBuilder<int>(
//                 valueListenable: likeCount,
//                 builder: (context, count, _) {
//                   return Text(
//                     '$count',
//                     style: TextStyle(color: Colors.white),
//                   );
//                 },
//               ),
//               InkWell(
//                 onTap: () {
//                      Get.to(Commentpage());
//                 },
//                 child: Icon(Icons.comment,color: Colors.white,)
//                 ),
//               PopupMenuButton(
//                 icon: Icon(Icons.send,color: Colors.white,),
//                 itemBuilder: (context)=>[
//                 PopupMenuItem(
//                   child:   
//                    Story(
//                     yourstory: 'dhanush',image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTb0159GaEnv-VkyrDiWafsyyAjzWu9ThZQIQ&s',),
//               ),
//               PopupMenuItem(child:Story(yourstory: 'siva',image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSumxRUib40d9nGJinvbap8wganMWrmA_SOQQ&s',), ),
//               PopupMenuItem(child:  Story(yourstory: 'dhanush',image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSumxRUib40d9nGJinvbap8wganMWrmA_SOQQ&s',)),
//              PopupMenuItem(child:   Story(yourstory: 'logu',image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJPpj0S8YQh_2NKpGxMD35na5Ql9Xdeftc1A&s',),)             
//               ]
//               ),
//                 SizedBox(width: size.width*0.4,), 
            
//               ValueListenableBuilder(valueListenable: isSave, builder: (context,Save,_)
//               {
//                 return IconButton(onPressed: toggleSave, icon: Icon(
//                   Save?
//                   BootstrapIcons.save_fill:BootstrapIcons.save
//                   ,color: Colors.white,
//                   )
//                   );
//               }
//               )

//             ],
            
//           ),
    
//         ),
//         Text('xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx',style: TextStyle(color: Colors.white),)
//       ],
//     );
//   }
// }
import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/accountpage.dart';
import 'package:flutter_application_1/commentpage.dart';
import 'package:flutter_application_1/story/story.dart';
import 'package:get/get.dart';

class Post extends StatelessWidget {
  final String profile;
  final String accname;
  final String content;

  Post({
    super.key,
    required this.profile,
    required this.accname,
    required this.content,
  });

  final ValueNotifier<bool> isSave = ValueNotifier(false);
  final ValueNotifier<bool> isLiked = ValueNotifier(false);
  final ValueNotifier<int> likeCount = ValueNotifier(0);
  final ValueNotifier<bool> isFollow = ValueNotifier(false);
  final ValueNotifier<bool> isMute = ValueNotifier(false);

  void toggleLike() {
    isLiked.value = !isLiked.value;
    likeCount.value += isLiked.value ? 1 : -1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// ───────── Header ─────────
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Row(
            children: [
              InkWell(
                onTap: () => Get.to( Accountpage()),
                child: CircleAvatar(
                  radius: 18,
                  backgroundImage: NetworkImage(profile),
                ),
              ),

              const SizedBox(width: 10),

              Expanded(
                child: InkWell(
                  onTap: () => Get.to( Accountpage()),
                  child: Text(
                    accname,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),

              ValueListenableBuilder<bool>(
                valueListenable: isFollow,
                builder: (_, following, __) {
                  return TextButton(
                    onPressed: () => isFollow.value = !following,
                    child: Text(
                      following ? 'Following' : 'Follow',
                      style: const TextStyle(color: Colors.white),
                    ),
                  );
                },
              ),

              PopupMenuButton(
                icon: const Icon(Icons.more_vert, color: Colors.white),
                itemBuilder: (_) => const [
                  PopupMenuItem(child: Text('About')),
                  PopupMenuItem(child: Text('Not interested')),
                  PopupMenuItem(
                    child: Text(
                      'Report',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        /// ───────── Post Image ─────────
        AspectRatio(
          aspectRatio: 1, // perfect for mobile
          child: Stack(
            children: [
              Positioned.fill(
                child: Image.network(
                  content,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 10,
                right: 10,
                child: ValueListenableBuilder<bool>(
                  valueListenable: isMute,
                  builder: (_, muted, __) {
                    return InkWell(
                      onTap: () => isMute.value = !muted,
                      child: Icon(
                        muted
                            ? Icons.volume_off_outlined
                            : Icons.volume_up_outlined,
                        color: Colors.white,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),

        /// ───────── Actions ─────────
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Row(
            children: [
              ValueListenableBuilder<bool>(
                valueListenable: isLiked,
                builder: (_, liked, __) {
                  return InkWell(
                    onTap: toggleLike,
                    child: Icon(
                      liked
                          ? BootstrapIcons.heart_fill
                          : BootstrapIcons.heart,
                      color: liked ? Colors.red : Colors.white,
                      size: 22,
                    ),
                  );
                },
              ),

              const SizedBox(width: 12),

              ValueListenableBuilder<int>(
                valueListenable: likeCount,
                builder: (_, count, __) {
                  return Text(
                    '$count',
                    style: const TextStyle(color: Colors.white, fontSize: 13),
                  );
                },
              ),

              const SizedBox(width: 16),

              InkWell(
                onTap: () => Get.to( Commentpage()),
                child: const Icon(Icons.comment, color: Colors.white, size: 22),
              ),

              const SizedBox(width: 16),

              PopupMenuButton(
                icon: const Icon(Icons.send, color: Colors.white),
                itemBuilder: (_) => const [
                  PopupMenuItem(
                    child: Story(
                      yourstory: 'dhanush',
                      image:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTb0159GaEnv-VkyrDiWafsyyAjzWu9ThZQIQ&s',
                    ),
                  ),
                ],
              ),

              const Spacer(),

              ValueListenableBuilder<bool>(
                valueListenable: isSave,
                builder: (_, saved, __) {
                  return IconButton(
                    onPressed: () => isSave.value = !saved,
                    icon: Icon(
                      saved
                          ? BootstrapIcons.save_fill
                          : BootstrapIcons.save,
                      color: Colors.white,
                    ),
                  );
                },
              ),
            ],
          ),
        ),

        /// ───────── Caption placeholder ─────────
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            'This is a sample caption text',
            style: TextStyle(color: Colors.white, fontSize: 13),
          ),
        ),
      ],
    );
  }
}
