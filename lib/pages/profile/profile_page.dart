import 'package:chat_app/config/app_routes.dart';
import 'package:chat_app/config/app_strings.dart';

import '../../styles/app_text.dart';
import '../../widgets/toolbar.dart';
import 'package:flutter/material.dart';

enum ProfileMenu {
  edit,
  logout,
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(
        title: AppStrings.profile,
        actions: [
          PopupMenuButton<ProfileMenu>(
            onSelected: (value) {
              switch (value) {
                case ProfileMenu.edit:
                  Navigator.of(context).pushNamed(AppRoutes.editProfile);
                  break;
                case ProfileMenu.logout:
                  print('logout');
                  break;
                default:
              }
            },
            itemBuilder: (context) {
              return [
                const PopupMenuItem(
                  //! const
                  value: ProfileMenu.edit,
                  child: Text('Edit'),
                ),
                const PopupMenuItem(
                  //! const
                  value: ProfileMenu.logout,
                  child: Text('Logout'),
                ),
              ];
            },
          ),
        ],
      ),
      body: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(
              //! const
              Radius.circular(16),
            ),
            child: Image.asset(
              'assets/temp/user1.png',
              width: 90,
              height: 90,
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          const Text(
            //! const
            'Abdullah Habberrih',
            style: AppText.header2,
          ),
          const SizedBox(
            height: 12,
          ),
          const Text(
            //! const
            'Libyan',
            style: AppText.subtitle3,
          ),
          const SizedBox(
            height: 24,
          ),
          const Row(
            //! const
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    '472',
                    style: AppText.header2,
                  ),
                  Text('Followers'),
                ],
              ),
              Column(
                children: [
                  Text(
                    '119',
                    style: AppText.header2,
                  ),
                  Text('Posts'),
                ],
              ),
              Column(
                children: [
                  Text(
                    '22',
                    style: AppText.header2,
                  ),
                  Text('Following'),
                ],
              ),
            ],
          ),
          const Divider(
            //! const
            thickness: 1,
            height: 24,
          ),
        ],
      ),
    );
  }
}
