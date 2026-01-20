import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  final String yourstory;
  final String image;

  const Story({
    super.key,
    required this.yourstory,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final double avatarRadius = size.width * 0.09; // responsive
    final double storyWidth = size.width * 0.22;

    return SizedBox(
      width: storyWidth,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(width: 2, color: Colors.orange),
            ),
            padding: const EdgeInsets.all(4),
            child: CircleAvatar(
              radius: avatarRadius,
              backgroundImage: NetworkImage(image),
            ),
          ),

          const SizedBox(height: 6),

          Text(
            yourstory,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.white,
              fontSize: size.width * 0.035, // responsive text
            ),
          ),
        ],
      ),
    );
  }
}
