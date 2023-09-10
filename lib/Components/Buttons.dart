import 'package:flutter/material.dart';
import './RecommendedPage.dart';
class CustomButtons extends StatefulWidget {
  final double? width;
  final double? padding;
  final double? height;
  final VoidCallback? onTap;
  final Color? color;

  CustomButtons(
      {this.width, this.height, this.padding, this.onTap, this.color});

  @override
  _CustomButtonsState createState() => _CustomButtonsState();
}

class _CustomButtonsState extends State<CustomButtons> {
  bool _isTapped = false;

  void _handleTapDown(_) {
    setState(() {
      _isTapped = true;
    });
  }

  void _handleTapUp(_) {
    setState(() {
      _isTapped = false;
    });
  }

  // void _handleTapCancel() {
  //   setState(() {
  //     _isTapped = false;
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: widget.padding ?? 60),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Center(
          child: GestureDetector(
            onTapDown: _handleTapDown,
            onTapUp: _handleTapUp,
            onTap: () {
             Navigator.push(context, MaterialPageRoute(builder:(context)=>Recommendedpage()));
            },
            child: Container(
              width: widget.width ?? 250,
              height: widget.height ?? 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: _isTapped ? Colors.grey : widget.color,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Get Started"),
                  Icon(Icons.arrow_forward),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ResponsiveButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (MediaQuery.of(context).orientation == Orientation.portrait)
          Padding(
            padding: const EdgeInsets.only(top: 70),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Center(
                child: Container(
                  width: 100,
                  height: 160,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "assets/images/gifgit.gif",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ),
        if (MediaQuery.of(context).orientation == Orientation.portrait)
          CustomButtons(
              width: 250, height: 50, padding: 60, color: Colors.white),
        if (MediaQuery.of(context).orientation == Orientation.landscape)
          CustomButtons(
              width: 350, height: 50, padding: 20, color: Colors.white),
      ],
    );
  }
}
