import 'package:get/get.dart';
import 'package:tiktokap/modules/Splash/binding/splash_binding.dart';
import 'package:tiktokap/modules/Splash/view/splash_screen.dart';
import 'package:tiktokap/modules/dash_boar/view/dash_boar_screen.dart';
import 'package:tiktokap/modules/discover/view/discover_screen.dart';
import 'package:tiktokap/modules/home/view/home_screen.dart';
import 'package:tiktokap/modules/profiles/view/profile_screen.dart';
import 'package:tiktokap/modules/settings/view/setting_screen.dart';

part './routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.SPLASH,
      page: () => const SplashPage(),
      binding: SplashBinding(),
      preventDuplicates: false,
    ),
    GetPage(
      name: Routes.DASHBOAR,
      page: () => DashBoarPage(),
      // binding: SplashBinding(),
      preventDuplicates: false,
    ),
    GetPage(
      name: Routes.HOMEPAGE,
      page: () => HomePage(),
      // binding: SplashBinding(),
      preventDuplicates: false,
    ),
    GetPage(
      name: Routes.DISCOVER,
      page: () => DiscoverPage(),
      // binding: SplashBinding(),
      preventDuplicates: false,
    ),
    GetPage(
      name: Routes.PROFILE,
      page: () => ProfilePage(),
      // binding: SplashBinding(),
      preventDuplicates: false,
    ),
    GetPage(
      name: Routes.SETTINGS,
      page: () => SettingPage(),
      // binding: SplashBinding(),
      preventDuplicates: false,
    ),
  ];
}
