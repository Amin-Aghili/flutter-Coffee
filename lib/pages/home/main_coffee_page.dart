import 'package:flutt/utils/colors.dart';
import 'package:flutt/utils/dimensions.dart';
import 'package:flutt/widgets/big_text.dart';
import 'package:flutt/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'coffee_page_body.dart';

class MainCoffeePage extends StatefulWidget {
  const MainCoffeePage({Key? key}) : super(key: key);

  @override
  State<MainCoffeePage> createState() => _MainCoffeePageState();
}

class _MainCoffeePageState extends State<MainCoffeePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // showing the header
          Container(
            child: Container(
              margin: EdgeInsets.only(top: Dimensions.height45, bottom: Dimensions.height15),
              padding: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(text: "Bangladesh", color: AppColors.mainColor),
                      Row(
                        children: [
                          SmallText(text: "Fereyonkenar", color: Colors.black54,),
                          Icon(Icons.arrow_drop_down_rounded)
                        ],
                      )
                    ],
                  ),
                  Center(
                    child: Container(
                      width: Dimensions.height45,
                      height: Dimensions.height45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Dimensions.radius15),
                          color: AppColors.mainColor
                      ),
                      child: Icon(Icons.search, color: Colors.white, size: Dimensions.iconSize24),
                    ),
                  )
                ],
              ),
            ),
          ),
          // showing the body
          Expanded(child: SingleChildScrollView(
            child: CoffeePageBody(),
          ))
        ],
      ),
    );
  }
}
