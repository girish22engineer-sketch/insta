
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
                  backgroundImage: AssetImage(profile),
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
                          'assets/images/1.jpg',
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
