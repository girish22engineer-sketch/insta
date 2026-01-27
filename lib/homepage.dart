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
                      'assets/images/1.jpg',
                ),
                Story(
                  yourstory: 'siva',
                  image:
                      'assets/images/2.jpg',
                ),
                Story(
                  yourstory: 'logu',
                  image:
                      'assets/images/3.jpg',
                ),
                Story(
                  yourstory: 'velga',
                  image:
                      'assets/images/4.png',
                ),
                Story(
                  yourstory: 'surya',
                  image:
                      'assets/images/5.jpg',
                ),Story(yourstory: 'pk', image: 'assets/images/6.jpg',),
              ],
            ),
          ),

           Post(
            profile:
                'assets/images/5.jpg',
            accname: 'Velga',
            content:
                'assets/images/6.jpg',
          ),

           Post(
            profile:
                'assets/images/5.jpg',
            accname: 'Surya Engineering',
            content:
                'assets/images/7.png',
          ),
        ],
      ),
    );
  }
}
