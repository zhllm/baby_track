import 'package:baby_track/pages/index/index.dart';
import 'package:baby_track/pages/index/index_binding.dart';
import 'package:baby_track/pages/transit_page.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = AppRoutes.Home;

  static final routes = [
    GetPage(
      name: AppRoutes.Home,
      page: () => TransitPage(),
    ),
    GetPage(
      name: AppRoutes.Index,
      page: () => IndexPage(),
      binding: IndexBinding()
    ),
  ];
}
