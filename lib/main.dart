import 'package:chat_app/provider/app_repo.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'styles/app_colors.dart';
import 'config/app_routes.dart';

void main() {
  runApp(
    ChangeNotifierProvider<AppRepo>(
      create: (BuildContext context) => AppRepo(),
      child: DevicePreview(
        enabled: true,
        builder: (BuildContext context) => const HomeApp(),
      ),
    ),
  );
}

class HomeApp extends StatelessWidget {
  const HomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Urbanist',
        scaffoldBackgroundColor: AppColors.background,
        brightness: Brightness.dark,
      ),
      title: 'Chat App',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.login,
      routes: AppRoutes.pages,
    );
  }
}
