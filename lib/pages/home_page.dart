import 'package:chat_app/config/app_routes.dart';
import 'package:chat_app/provider/post_provider.dart';
import 'package:provider/provider.dart';

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
  @override
  void initState() {
    super.initState();
    context.read<PostProvider>().getPost();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(
        title: AppStrings.appName,
        actions: [
          IconButton(
            onPressed: () {
              // ** This is the action of the location icon
              Navigator.of(context).pushNamed(AppRoutes.nearby);
            },
            icon: SvgPicture.asset(AppIcons.icLocation),
          ),
        ],
      ),
      body: Consumer<PostProvider>(
        builder: (context, value, child) {
          return ListView.separated(
            itemBuilder: (context, index) {
              return PostItem(
                post: value.list[index],
              );
            },
            itemCount: value.list.length,
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(
                height: 12,
              );
            },
          );
        },
      ),
    );
  }
}
