import 'package:chat_app/config/app_icons.dart';
import 'package:chat_app/pages/home_page.dart';
import 'package:chat_app/pages/profile/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../styles/app_colors.dart';
import '../widgets/bottom_navigation_item.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Menus currentIndex = Menus.home;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: pages[currentIndex.index],
      bottomNavigationBar: MyBottomNavigation(
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
      ),
    );
  }

  final pages = [
    HomePage(),
    Center(
      child: Text('Favorite'),
    ),
    Center(
      child: Text('Add Post'),
    ),
    Center(
      child: Text('Messages'),
    ),
    ProfilePage(),
  ];
}

enum Menus {
  home,
  favorite,
  add,
  messages,
  user,
}

class MyBottomNavigation extends StatelessWidget {
  final Menus currentIndex;
  final ValueChanged<Menus> onTap;
  const MyBottomNavigation(
      {super.key, required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 87,
      margin: const EdgeInsets.all(20),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            left: 0,
            top: 17,
            child: Container(
              height: 70,
              decoration: const BoxDecoration(
                //! const
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(25),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: BottomNavigationItem(
                      onPressed: () => onTap(Menus.home),
                      icon: AppIcons.icHome,
                      current: currentIndex,
                      name: Menus.home,
                    ),
                  ),
                  Expanded(
                    child: BottomNavigationItem(
                      onPressed: () => onTap(Menus.favorite),
                      icon: AppIcons.icFavorite,
                      current: currentIndex,
                      name: Menus.favorite,
                    ),
                  ),
                  const Spacer(),
                  Expanded(
                    child: BottomNavigationItem(
                      onPressed: () => onTap(Menus.messages),
                      icon: AppIcons.icMessage,
                      current: currentIndex,
                      name: Menus.messages,
                    ),
                  ),
                  Expanded(
                    child: BottomNavigationItem(
                      onPressed: () => onTap(Menus.user),
                      icon: AppIcons.icUser,
                      current: currentIndex,
                      name: Menus.user,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            left: 0,
            top: 0,
            child: GestureDetector(
              onTap: () => onTap(Menus.add),
              child: Container(
                width: 64,
                height: 64,
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  //! const
                  color: AppColors.primary,
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset(AppIcons.icAdd),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
