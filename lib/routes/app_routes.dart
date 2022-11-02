import 'package:virtuevuapp2/presentation/s1_screen/s1_screen.dart';
import 'package:virtuevuapp2/presentation/s1_screen/binding/s1_binding.dart';
import 'package:virtuevuapp2/presentation/s2_screen/s2_screen.dart';
import 'package:virtuevuapp2/presentation/s2_screen/binding/s2_binding.dart';
import 'package:virtuevuapp2/presentation/s3_screen/s3_screen.dart';
import 'package:virtuevuapp2/presentation/s3_screen/binding/s3_binding.dart';
import 'package:virtuevuapp2/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:virtuevuapp2/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String s1Screen = '/s1_screen';

  static String s2Screen = '/s2_screen';

  static String s3Screen = '/s3_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: s1Screen,
      page: () => S1Screen(),
      bindings: [
        S1Binding(),
      ],
    ),
    GetPage(
      name: s2Screen,
      page: () => S2Screen(),
      bindings: [
        S2Binding(),
      ],
    ),
    GetPage(
      name: s3Screen,
      page: () => S3Screen(),
      bindings: [
        S3Binding(),
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
      page: () => S1Screen(),
      bindings: [
        S1Binding(),
      ],
    )
  ];
}
