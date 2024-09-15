import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/details_page_controller.dart';



class DetailsPageView extends StatelessWidget {
final String? heroTag;
final String? foodName;
final String? foodPrice;

DetailsPageView({ this.heroTag, this.foodName, this.foodPrice});

@override
Widget build(BuildContext context) {
final controller = Get.put(DetailsPageController(
heroTag: heroTag,
foodName: foodName,
foodPrice: foodPrice,
));

return Scaffold(
backgroundColor: Color.fromARGB(255, 16, 187, 234),
appBar: AppBar(
leading: IconButton(
onPressed: () {
Get.back();
},
icon: Icon(Icons.arrow_back_ios),
color: Colors.white,
),
backgroundColor: Colors.transparent,
elevation: 0.0,
title: Text(
'Details',
style: TextStyle(fontFamily: 'Montserrat', fontSize: 18.0, color: Colors.white),
),
centerTitle: true,
actions: <Widget>[
    IconButton(
    icon: Icon(Icons.more_horiz),
    onPressed: () {},
    color: Colors.white,
    )
    ],
    ),
    body: ListView(
    children: [
    Stack(
    children: [
    Container(
    height: Get.height - 82.0,
    width: Get.width,
    color: Colors.transparent,
    ),
    Positioned(
    top: 75.0,
    child: Container(
    decoration: BoxDecoration(
    borderRadius: BorderRadius.only(
    topLeft: Radius.circular(45.0),
    topRight: Radius.circular(45.0),
    ),
    color: Colors.white,
    ),
    height: Get.height - 100.0,
    width: Get.width,
    ),
    ),
    Positioned(
    top: 30.0,
    left: (Get.width / 2) - 100.0,
    child: Hero(
    tag: controller.heroTag,
    child: Container(
    decoration: BoxDecoration(
    image: DecorationImage(
    image: AssetImage(controller.heroTag),
    fit: BoxFit.cover,
    ),
    ),
    height: 200.0,
    width: 200.0,
    ),
    ),
    ),
    Positioned(
    top: 250.0,
    left: 25.0,
    right: 25.0,
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
        Text(
        controller.foodName,
        style: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 22.0,
        fontWeight: FontWeight.bold,
        ),
        ),
        SizedBox(height: 20.0),
        Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
            Text(
            controller.foodPrice,
            style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 20.0,
            color: Colors.grey,
            ),
            ),
            Container(height: 25.0, color: Colors.grey, width: 1.0),
            _buildQuantityButton(),
            ],
            ),
            SizedBox(height: 20.0),
            SizedBox(
            height: 150.0,
            child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
                _buildInfoCard('WEIGHT', '300', 'G', controller),
                SizedBox(width: 10.0),
                _buildInfoCard('CALORIES', '267', 'CAL', controller),
                SizedBox(width: 10.0),
                _buildInfoCard('VITAMINS', 'A, B6', 'VIT', controller),
                SizedBox(width: 10.0),
                _buildInfoCard('AVAIL', 'NO', 'AV', controller),
                ],
                ),
                ),
                SizedBox(height: 20.0),
                _buildCheckoutButton(),
                ],
                ),
                ),
                ],
                ),
                ],
                ),
                );
                }

                Widget _buildInfoCard(
                String cardTitle,
                String info,
                String unit,
                DetailsPageController controller,
                ) {
                return Obx(
                () => InkWell(
                onTap: () {
                controller.selectCard(cardTitle);
                },
                child: AnimatedContainer(
                duration: Duration(milliseconds: 500),
                curve: Curves.easeIn,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: controller.selectedCard.value == cardTitle
                ? Color.fromARGB(255, 16, 187, 234)
                : Colors.white,
                border: Border.all(
                color: controller.selectedCard.value == cardTitle
                ? Colors.transparent
                : Colors.grey.withOpacity(0.3),
                style: BorderStyle.solid,
                width: 0.75,
                ),
                ),
                height: 100.0,
                width: 100.0,
                child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 15.0),
                child: Text(
                cardTitle,
                style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 12.0,
                color: controller.selectedCard.value == cardTitle
                ? Colors.white
                : Colors.grey.withOpacity(0.7),
                ),
                ),
                ),
                Padding(
                padding: const EdgeInsets.only(left: 15.0, bottom: 8.0),
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                    Text(
                    info,
                    style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 14.0,
                    color: controller.selectedCard.value == cardTitle
                    ? Colors.white
                    : Colors.black,
                    fontWeight: FontWeight.bold,
                    ),
                    ),
                    Text(
                    unit,
                    style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 12.0,
                    color: controller.selectedCard.value == cardTitle
                    ? Colors.white
                    : Colors.black,
                    ),
                    ),
                    ],
                    ),
                    )
                    ],
                    ),
                    ),
                    ),
                    );
                    }

                    Widget _buildQuantityButton() {
                    return Container(
                    width: 125.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17.0),
                    color: Color.fromARGB(255, 16, 187, 234),
                    ),
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                        InkWell(
                        onTap: () {},
                        child: Container(
                        height: 25.0,
                        width: 25.0,
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.0),
                        color: Color.fromARGB(255, 16, 187, 234),
                        ),
                        child: Center(
                        child: Icon(
                        Icons.remove,
                        color: Colors.white,
                        size: 20.0,
                        ),
                        ),
                        ),
                        ),
                        Text(
                        '2',
                        style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                        fontSize: 15.0,
                        ),
                        ),
                        InkWell(
                        onTap: () {},
                        child: Container(
                        height: 25.0,
                        width: 25.0,
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.0),
                        color: Colors.white,
                        ),
                        child: Center(
                        child: Icon(
                        Icons.add,
                        color: Color.fromARGB(255, 16, 187, 234),
                        size: 20.0,
                        ),
                        ),
                        ),
                        )
                        ],
                        ),
                        );
                        }

                        Widget _buildCheckoutButton() {
                        return Padding(
                        padding: EdgeInsets.only(bottom: 5.0),
                        child: Container(
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0),
                        bottomLeft: Radius.circular(25.0),
                        bottomRight: Radius.circular(25.0),
                        ),
                        color: Colors.black,
                        ),
                        height: 50.0,
                        child: Center(
                        child: Text(
                        '\$52.00',
                        style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                        ),
                        ),
                        ),
                        ),
                        );
                        }
                        }
