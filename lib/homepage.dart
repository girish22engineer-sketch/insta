import 'package:flutter/material.dart';
import 'story/story.dart';
import 'post/post.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 160,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 8),
              children: const [
                Story(
                  yourstory: 'dhanush',
                  image:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTb0159GaEnv-VkyrDiWafsyyAjzWu9ThZQIQ&s',
                ),
                Story(
                  yourstory: 'siva',
                  image:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSumxRUib40d9nGJinvbap8wganMWrmA_SOQQ&s',
                ),
                Story(
                  yourstory: 'logu',
                  image:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJPpj0S8YQh_2NKpGxMD35na5Ql9Xdeftc1A&s',
                ),
                Story(
                  yourstory: 'velga',
                  image:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHXB-nP3eWXxawpGJNltcuwjuCK6vzHxnzbQ&s',
                ),
              ],
            ),
          ),

           Post(
            profile:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTH274VBO8xBkASXrcRJohAF75nFdh-Vwm9ig&s',
            accname: 'Velga',
            content:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgJhng02dkXeDzkxso3IeY1xvtzaF_YAMFcw&s',
          ),

           Post(
            profile:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTb0159GaEnv-VkyrDiWafsyyAjzWu9ThZQIQ&s',
            accname: 'Surya Engineering',
            content:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_xcEUfsnaChTZxK8iXwicv0ucQ_g8Xfew2Q&s',
          ),
        ],
      ),
    );
  }
}
