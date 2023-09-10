import 'package:flutter/material.dart';
import 'package:assignment_flutter_app/Components/colors.dart';
import 'RecommendedPageLayer1.dart';
import 'package:assignment_flutter_app/Components/SVG.dart';

class Recommendedpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final marginPercent = 0;
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
                      padding: EdgeInsets.only(top: 25, left: 10, right: 10),
                      child: ListTile(
                        leading: Text(
                          "Hey, Atif khan",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontFamily: "Manrope",
                          ),
                        ),
                        title: SizedBox(width: 100),
                        trailing: Padding(
                          padding: const EdgeInsets.only(top:15),
                          child: SvgPurse(),
                        )
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 25, right: 25),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide.none,
                          ),
                          hintStyle: TextStyle(color: Color(0xff8891A5)),
                          hintText: "Search Product or store",
                          prefixIcon: Icon(
                            Icons.search_rounded,
                            size: 20.0,
                            color: Colors.white,
                          ),
                          filled: true,
                          fillColor: Color(0xff153075),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 5.0,
                            horizontal: 5.0,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: ListTile(
                        title: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "DELIVER TO",
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: Colors.white60,
                                      fontFamily: "Manrope",
                                    ),
                                  ),
                                  Text(
                                    " WITHIN",
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: Colors.white60,
                                      fontFamily: "Manrope",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 4),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  // decoration: BoxDecoration(
                                  //   border: Border.all(
                                  //     color: Colors.white, // Border color
                                  //     width: 2.0, // Border width
                                  //   ),
                                  // ),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Green Way 3000, Sylhet",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                          fontFamily: "Manrope",
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Transform.rotate(
                                        angle: 4.70,
                                        // 180 degrees in radians (to point downwards)
                                        child: Icon(Icons.arrow_back_ios_new,
                                            color: Colors.white, size: 10),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  // decoration: BoxDecoration(
                                  //   border: Border.all(
                                  //     color: Colors.white, // Border color
                                  //     width: 2.0, // Border width
                                  //   ),
                                  // ),
                                  child: Row(
                                    children: [
                                      Text(
                                        "1HOUR",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                          fontFamily: "Manrope",
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Transform.rotate(
                                        angle: 4.70,
                                        // 180 degrees in radians (to point downwards)
                                        child: Icon(Icons.arrow_back_ios_new,
                                            color: Colors.white, size: 10),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Expanded(
              flex: 6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 3,
                    child: SingleChildScrollView(
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: screenHeight * 0.5 / 100),
                        child: UpperCards(),
                      ),
                    ),
                  ),


                  Expanded(
                    flex: 7,
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: screenHeight * 0.5/100),
                      child:  SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left:10),
                              child: Text(
                                "Recommended",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.black,
                                  fontFamily: "Manrope",
                                ),
                              ),
                            ),
                            //Lower Cards
                            Container(
                              margin: EdgeInsets.symmetric(vertical: screenHeight * 0.5/100),
                              child: LowerCards(),
                            ),
                            //Deals on Cloths
                            Container(
                              margin: EdgeInsets.only(left:10,top: 20),
                              child: Text(
                                "Deals on Items",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.black,
                                  fontFamily: "Manrope",
                                ),
                              ),
                            ),
                            //Lower Cards
                            Container(
                              margin: EdgeInsets.symmetric(vertical: screenHeight * 0.5/100),
                              child: LowerCards(),
                            ),
                            //Watches Collection
                            Container(
                              margin: EdgeInsets.only(left:10,top: 20),
                              child: Text(
                                "Beautifull Collection",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.black,
                                  fontFamily: "Manrope",
                                ),
                              ),
                            ),
                            //Lower Cards
                            Container(
                              margin: EdgeInsets.symmetric(vertical: screenHeight * 0.5/100),
                              child: LowerCards(),
                            ),
                            //Offers
                            Container(
                              margin: EdgeInsets.only(left:10,top: 20),
                              child: Text(
                                "Discount Offers",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.black,
                                  fontFamily: "Manrope",
                                ),
                              ),
                            ),
                            //Lower Cards
                            Container(
                              margin: EdgeInsets.symmetric(vertical: screenHeight * 0.5/100),
                              child: LowerCards(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Third section (1/4 of the screen)
            BottomNavBar(initialValue: 0)
            // Other widgets in the column
          ],
        ),
      ),
    );
  }
}
