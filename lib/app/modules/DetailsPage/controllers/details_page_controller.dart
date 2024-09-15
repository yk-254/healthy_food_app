import 'package:get/get.dart';

class DetailsPageController extends GetxController {
  //TODO: Implement DetailsPageController

   final heroTag;
  final foodName;
  final foodPrice;
  var selectedCard = 'WEIGHT'.obs;

  DetailsPageController({this.heroTag, this.foodName, this.foodPrice});

  void selectCard(String cardTitle) {
    selectedCard.value = cardTitle;
  }
}
