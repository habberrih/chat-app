import 'package:flutter/material.dart';

import '../styles/app_text.dart';

class PostItem extends StatelessWidget {
  final String user;
  const PostItem({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/temp/user1.png',
                width: 48,
                height: 48,
              ),
              const SizedBox(
                width: 16,
              ),
              Text(
                user,
                style: AppText.subtitle3,
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Image.asset('assets/temp/post1.jpg'),
          const SizedBox(
            height: 12,
          ),
          const Text(
            //! const
            'Today is the first day of the first day of the first day of the first day of the first day of the first',
            style: AppText.subtitle3,
          ),
        ],
      ),
    );
  }
}
