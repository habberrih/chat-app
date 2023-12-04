import '../pages/home_page.dart';
import '../pages/main_page.dart';
import '../pages/profile/edit_profile_page.dart';
import '../pages/login_page.dart';

class AppRoutes {
  static final pages = {
    '/': (context) => const LoginPage(),
    '/home': (context) => const HomePage(),
    '/main': (context) => const MainPage(),
    '/edit_profile': (context) => const EditProfilePage(),
  };
  static const login = '/';
  static const home = '/home';
  static const main = '/main';
  static const editProfile = '/edit_profile';
}
