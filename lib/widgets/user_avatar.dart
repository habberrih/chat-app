import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  final double size;
  final String profileImage;
  const UserAvatar({
    super.key,
    required this.profileImage,
    this.size = 40,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(
        //! const
        Radius.circular(16),
      ),
      child: Image.asset(
        profileImage,
        width: size,
        height: size,
      ),
    );
  }
}
