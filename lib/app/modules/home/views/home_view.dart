import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../DetailsPage/views/details_page_view.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
    final controller = Get.find<HomeController>();

        @override
        Widget build(BuildContext context) {
        return Scaffold(
        backgroundColor: Color(0xFF21BFBD),
        body: Column(
        children: <Widget>[
            SizedBox(height: 25.0),
            Expanded(
            child: Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Container(

            child: Row(
            children: <Widget>[
                Text('Healthy',
                style: TextStyle(
                fontFamily: 'Montserrat',
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25.0)),
                SizedBox(width: 10.0),
                Text('Food',
                style: TextStyle(
                fontFamily: 'Montserrat',
                color: Colors.white,
                fontSize: 25.0))
                ],
                ),
                ),
                ),
                ),
                SizedBox(height: 40.0),
                Expanded(
                flex: 6,
                child: Container(

                decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
                ),
                child:
                ListView(
                primary: false,
                padding: EdgeInsets.only(left: 25.0, right: 20.0),
                children: <Widget>[
                    Padding(
                    padding: EdgeInsets.only(top: 45.0),
                    child: Container(
                    height: Get.height - 300.0,
                    child: ListView.builder(
                    itemCount: controller.foodList.length,
                    itemBuilder: (context, index) => _buildFoodItem(
                    controller.foodList[index]['imgPath']!,
                    controller.foodList[index]['foodName']!,
                    controller.foodList[index]['price']!,
                    ),
                    ),
                    ),
                    ),
                    Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                        _buildActionButton(Icons.search),
                        _buildActionButton(Icons.shopping_basket),
                        _buildCheckoutButton(),
                        ],
                        )
                        ],
                        ),

                        ),
                        )
                        ],
                        ),
                        );
                        }

                        Widget _buildFoodItem(String imgPath, String foodName, String price) {
                        return Padding(
                        padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
                        child: InkWell(
                        onTap: () {
                        Get.to(() => DetailsPageView(heroTag: imgPath, foodName: foodName, foodPrice: price));
                        },
                        child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                            Container(
                            child: Row(
                            children: [
                            Hero(
                            tag: imgPath,
                            child: Image(
                            image: AssetImage(imgPath),
                            fit: BoxFit.cover,
                            height: 75.0,
                            width: 75.0,
                            ),
                            ),
                            SizedBox(width: 10.0),
                            Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            Text(
                            foodName,
                            style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold,
                            ),
                            ),
                            Text(
                            price,
                            style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 15.0,
                            color: Colors.grey,
                            ),
                            )
                            ],
                            )
                            ],
                            ),
                            ),
                            IconButton(
                            icon: Icon(Icons.add),
                            color: Colors.black,
                            onPressed: () {},
                            )
                            ],
                            ),
                            ),
                            );
                            }

                            Widget _buildActionButton(IconData icon) {
                            return Container(
                            height: 65.0,
                            width: 60.0,
                            decoration: BoxDecoration(
                            border: Border.all(
                            color: Colors.grey,
                            style: BorderStyle.solid,
                            width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Center(
                            child: Icon(icon, color: Colors.black),
                            ),
                            );
                            }

                            Widget _buildCheckoutButton() {
                            return Container(
                            height: 65.0,
                            width: 120.0,
                            decoration: BoxDecoration(
                            border: Border.all(
                            color: Colors.grey,
                            style: BorderStyle.solid,
                            width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                            color: Color(0xFF1C1428),
                            ),
                            child: Center(
                            child: Text(
                            'Checkout',
                            style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.white,
                            fontSize: 15.0,
                            ),
                            ),
                            ),
                            );
                            }
                            }
