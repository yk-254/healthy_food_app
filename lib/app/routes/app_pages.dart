import 'package:get/get.dart';

import '../modules/DetailsPage/bindings/details_page_binding.dart';
import '../modules/DetailsPage/views/details_page_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () =>  HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.DETAILS_PAGE,
      page: () =>  DetailsPageView(),
      binding: DetailsPageBinding(),
    ),
  ];
}
