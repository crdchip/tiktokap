import 'package:get/get.dart';
import 'package:tiktokap/modules/Splash/binding/splash_binding.dart';
import 'package:tiktokap/modules/Splash/view/splash_screen.dart';

part './routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.SPLASH,
      page: () => const SplashPage(),
      binding: SplashBinding(),
      preventDuplicates: false,
    ),
    // GetPage(
    //   name: Routes.DASHBOAR,
    //   page: () => DashBoarPage(),
    //   // binding: SplashBinding(),
    //   preventDuplicates: false,
    // ),
    // GetPage(
    //   name: Routes.HOMEPAGE,
    //   page: () => HomePage(),
    //   // binding: SplashBinding(),
    //   preventDuplicates: false,
    // ),
    // GetPage(
    //   name: Routes.REGISTER,
    //   page: () => RegisterPage(),
    //   // binding: SplashBinding(),
    //   preventDuplicates: false,
    // ),
    // GetPage(
    //   name: Routes.AUTH,
    //   page: () => AuthPage(),
    //   // binding: SplashBinding(),
    //   preventDuplicates: false,
    // ),
  ];
}
