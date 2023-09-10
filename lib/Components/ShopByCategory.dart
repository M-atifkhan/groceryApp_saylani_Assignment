import 'package:flutter/material.dart';
import './colors.dart';
import 'RecommendedPageLayer1.dart';
import 'SVG.dart';

class Shopbycatogaries extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            // First section (half the screen)
            Expanded(
              flex: 3,
              child: Container(
                color: Color(0xff2A4BA0),
                child: ListView(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 42, left: 15, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              "Hey, Atif Khan",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontFamily: "Manrope",
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Row(
                              children: [
                                SvgSearch(),
                                SizedBox(width:40),
                                SvgPurse(),
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20, left: 25, right: 25),
                      child:Text("Shop",
                        style: TextStyle(
                          fontSize:40,
                          color: Colors.white,
                          fontWeight: FontWeight.w300)
                      )
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5, left: 25, right: 25),
                      child:Text("By Category",
                        style: TextStyle(
                          fontSize:45,
                          color: Colors.white,
                          fontWeight: FontWeight.w700)
                      )
                    ),
                  ],
                ),
              ),
            ),

            // Second section (1/4 of the screen)
            Expanded(
              flex: 6,
              child:CatogariesCards()
            ),
            // Third section (1/4 of the screen)
            BottomNavBar(initialValue: 1)
            // Other widgets in the column
          ],
        ),
      ),
    );
  }
}
