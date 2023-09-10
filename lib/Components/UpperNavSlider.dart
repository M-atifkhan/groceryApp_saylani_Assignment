import 'package:flutter/material.dart';
import './RecommendedPageLayer1.dart';
int selectedContainerIndex = 0;
List<String> shoppingItems = [
  "Cloths",
  "Watches",
  "Shoes",
  "Electronics",
  "Fruits",
  "Vegetables",
  "Fishes"
  // Add more items here
];
List<Widget Function()> shoppingPages = [
      () => Cloths(),
      () => Watches(),
      () => Shoes(),
      () => Electronics(),
      () => Fruits(),
      () => Vegetables(),
      () => Fishes(),
  // Add more items here
];

class Uppernavslider extends StatefulWidget {
  @override
  _Uppernavslider createState() => _Uppernavslider();
}
class _Uppernavslider extends State<Uppernavslider> {
  PageController pageController = PageController(initialPage: 0);
  int selectedContainerIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50, // Adjust the height as needed
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              bool isSelected = selectedContainerIndex == index;
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedContainerIndex = index;
                    pageController.animateToPage(
                      index,
                      duration: Duration(milliseconds: 300),
                      curve: Curves.ease,
                    );
                  });
                },
                child: Container(
                  margin: EdgeInsets.only(
                      top: 10, left: 3, right: 3, bottom: 10),
                  decoration: BoxDecoration(
                    color: isSelected ? Color(0xffF9B023) : Color(0xffE3EFEA),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  alignment: Alignment.center,
                  child: Container(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Text(shoppingItems[index]),
                  ),
                ),
              );
            },
            itemCount: shoppingItems.length,
          ),
        ),
        Expanded(
          child: PageView.builder(
            controller: pageController,
            itemBuilder: (context, index) {
              // Call the functions to create the pages
              final page = shoppingPages[index];
              return Container(
                alignment: Alignment.center,
                child: page(),
              );
            },
            itemCount: shoppingPages.length,
          ),
        ),
      ],
    );
  }
}

