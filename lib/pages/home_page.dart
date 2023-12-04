import '../config/app_icons.dart';
import '../config/app_strings.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/post_item.dart';
import '../widgets/toolbar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> users = [];
  @override
  Widget build(BuildContext context) {
    mockUsersFromServer();
    return Scaffold(
      appBar: Toolbar(
        title: AppStrings.appName,
        actions: [
          IconButton(
            onPressed: () {
              // ** This is the action of the location icon
            },
            icon: SvgPicture.asset(AppIcons.icLocation),
          ),
        ],
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return PostItem(user: users[index]);
        },
        itemCount: users.length,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            height: 12,
          );
        },
      ),
    );
  }

  mockUsersFromServer() {
    for (var i = 0; i < 500; i++) {
      users.add('User Number $i');
    }
  }
}
