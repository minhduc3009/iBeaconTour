import 'package:virtuevuapp2/presentation/home_screen/home_screen.dart';
import 'package:virtuevuapp2/presentation/home_screen/binding/home_binding.dart';
import 'package:virtuevuapp2/presentation/scan_screen/scan_screen.dart';
import 'package:virtuevuapp2/presentation/scan_screen/binding/scan_binding.dart';
import 'package:virtuevuapp2/presentation/detail_screen/detail_screen.dart';
import 'package:virtuevuapp2/presentation/detail_screen/binding/detail_binding.dart';
import 'package:virtuevuapp2/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:virtuevuapp2/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String homeScreen = '/home_screen';

  static String scanScreen = '/scan_screen';

  static String detailScreen = '/detail_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: homeScreen,
      page: () => HomeScreen(),
      bindings: [
        HomeBinding(),
      ],
    ),
    GetPage(
      name: scanScreen,
      page: () => ScanScreen(),
      bindings: [
        ScanBinding(),
      ],
    ),
    GetPage(
      name: detailScreen,
      page: () => DetailScreen(),
      bindings: [
        DetailBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => HomeScreen(),
      bindings: [
        HomeBinding(),
      ],
    )
  ];
}
