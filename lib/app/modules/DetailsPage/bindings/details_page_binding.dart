import 'package:get/get.dart';

import '../controllers/details_page_controller.dart';

class DetailsPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailsPageController>(
      () => DetailsPageController(),
    );
  }
}
