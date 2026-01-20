import 'dart:ui';
import 'package:flutter/material.dart';
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
          color: Colors.black,
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              /// Profile Row
              Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTb0159GaEnv-VkyrDiWafsyyAjzWu9ThZQIQ&s',
                    ),
                  ),

                  const SizedBox(width: 20),

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

              const SizedBox(height: 10),

              const Text(
                'username',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),

              const SizedBox(height: 5),

              const Text(
                'about',
                style: TextStyle(color: Colors.white70),
              ),

              const SizedBox(height: 15),

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

                  const SizedBox(width: 10),

                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Message'),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              /// Icons Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Icon(Icons.grid_on, color: Colors.white),
                  Icon(Icons.play_arrow, color: Colors.white),
                  Icon(Icons.person_2_outlined, color: Colors.white),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Helper Widget
class _ProfileCount extends StatelessWidget {
  final String title;
  final String count;

  const _ProfileCount({required this.title, required this.count});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(count,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold)),
        Text(title, style: const TextStyle(color: Colors.white70)),
      ],
    );
  }
}
