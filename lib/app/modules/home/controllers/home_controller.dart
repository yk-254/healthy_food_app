import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
final foodList = [
    {'imgPath': 'images/plate1.png', 'foodName': 'Salmon bowl', 'price': '\$24.00'},
    {'imgPath': 'images/plate2.png', 'foodName': 'Spring bowl', 'price': '\$22.00'},
    {'imgPath': 'images/plate6.png', 'foodName': 'Avocado bowl', 'price': '\$26.00'},
    {'imgPath': 'images/plate5.png', 'foodName': 'Berry bowl', 'price': '\$24.00'},
  ];
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
