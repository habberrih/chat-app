import 'package:chat_app/config/app_config.dart';
import 'package:flutter/material.dart';

import '../data/models/post.dart';
import '../styles/app_text.dart';

class PostItem extends StatelessWidget {
  final Post post;
  const PostItem({super.key, required this.post});

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
                '${post.owner?.name}',
                style: AppText.subtitle3,
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Image.network('${AppConfig.baseURL}${post.image}'),
          const SizedBox(
            height: 12,
          ),
          Text(
            post.message ?? "",
            style: AppText.subtitle3,
          ),
        ],
      ),
    );
  }
}
