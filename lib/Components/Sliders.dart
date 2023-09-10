import 'package:flutter/material.dart';
import './Buttons.dart';
class Hadings {
  final String? line;
  final double? paddindTop;

  Hadings(this.line, this.paddindTop);

  static Widget getHeading(double paddingTop,String line) {
    return Padding(
      padding: EdgeInsets.only(top: paddingTop),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
         line,
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
class Slider1 extends StatelessWidget {
  final String? Str1;
  final String? Str2;
  final double? width1;
  final double? width2;
  final Color? color1;
  final Color? color2;

  Slider1(this.Str1, this.Str2, this.width1, this.width2, this.color1, this.color2);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Hadings.getHeading(16, "Your holiday"),
                  Hadings.getHeading(0, "shopping"),
                  Hadings.getHeading(0, "delivered to Screen"),
                  Hadings.getHeading(0, Str1 ?? "one"),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "There's something for everyone to enjoy with Sweet Shop Favourites Screen ${Str2 ?? '1'}",
                        style: TextStyle(color: Color(0xffB2BBCE), fontSize: 20),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          Container(
                            width: width1 ?? 20,
                            height: 2,
                            color: color1 ?? Color(0xff2A4BA0),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 8),
                            width: width2 ?? 30,
                            height: 2,
                            color: color2 ?? Color(0xffF8F9FB),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ResponsiveButtons(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class SliderPageView extends StatefulWidget {
  @override
  _SliderPageViewState createState() => _SliderPageViewState();
}
class _SliderPageViewState extends State<SliderPageView> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: PageView(
        controller: _pageController,
        children: [
          Slider1("one", "1", 20, 30, Color(0xff2A4BA0), Color(0xffF8F9FB)),
          Slider1("two", "2", 30, 20, Color(0xffF8F9FB), Color(0xff2A4BA0)),
        ],
      ),
    );
  }
}