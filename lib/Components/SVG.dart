import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:assignment_flutter_app/Components/SVG.dart';
import './RecommendedPage.dart';
import 'colors.dart';
import 'package:assignment_flutter_app/main.dart';
import 'ShopByCategory.dart';

const String Categories = '''
<svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
<path fill-rule="evenodd" clip-rule="evenodd" d="M19.0004 4.6738C19.0004 6.7024 17.3552 8.3476 15.3266 8.3476C13.298 8.3476 11.6537 6.7024 11.6537 4.6738C11.6537 2.6452 13.298 1 15.3266 1C17.3552 1 19.0004 2.6452 19.0004 4.6738Z" stroke="#3E4554" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M19.0004 4.6738C19.0004 6.7024 17.3552 8.3476 15.3266 8.3476C13.298 8.3476 11.6537 6.7024 11.6537 4.6738C11.6537 2.6452 13.298 1 15.3266 1C17.3552 1 19.0004 2.6452 19.0004 4.6738Z" stroke="black" stroke-opacity="0.2" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M8.3467 4.6738C8.3467 6.7024 6.7024 8.3476 4.6729 8.3476C2.6452 8.3476 1 6.7024 1 4.6738C1 2.6452 2.6452 1 4.6729 1C6.7024 1 8.3467 2.6452 8.3467 4.6738Z" stroke="#3E4554" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M8.3467 4.6738C8.3467 6.7024 6.7024 8.3476 4.6729 8.3476C2.6452 8.3476 1 6.7024 1 4.6738C1 2.6452 2.6452 1 4.6729 1C6.7024 1 8.3467 2.6452 8.3467 4.6738Z" stroke="black" stroke-opacity="0.2" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M19.0004 15.2619C19.0004 17.2905 17.3552 18.9348 15.3266 18.9348C13.298 18.9348 11.6537 17.2905 11.6537 15.2619C11.6537 13.2333 13.298 11.5881 15.3266 11.5881C17.3552 11.5881 19.0004 13.2333 19.0004 15.2619Z" stroke="#3E4554" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M19.0004 15.2619C19.0004 17.2905 17.3552 18.9348 15.3266 18.9348C13.298 18.9348 11.6537 17.2905 11.6537 15.2619C11.6537 13.2333 13.298 11.5881 15.3266 11.5881C17.3552 11.5881 19.0004 13.2333 19.0004 15.2619Z" stroke="black" stroke-opacity="0.2" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M8.3467 15.2619C8.3467 17.2905 6.7024 18.9348 4.6729 18.9348C2.6452 18.9348 1 17.2905 1 15.2619C1 13.2333 2.6452 11.5881 4.6729 11.5881C6.7024 11.5881 8.3467 13.2333 8.3467 15.2619Z" stroke="#3E4554" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M8.3467 15.2619C8.3467 17.2905 6.7024 18.9348 4.6729 18.9348C2.6452 18.9348 1 17.2905 1 15.2619C1 13.2333 2.6452 11.5881 4.6729 11.5881C6.7024 11.5881 8.3467 13.2333 8.3467 15.2619Z" stroke="black" stroke-opacity="0.2" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
</svg>''';
const String Favorite =
'''<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
<path fill-rule="evenodd" clip-rule="evenodd" d="M2.87187 11.5983C1.79887 8.24832 3.05287 4.41932 6.56987 3.28632C8.41987 2.68932 10.4619 3.04132 11.9999 4.19832C13.4549 3.07332 15.5719 2.69332 17.4199 3.28632C20.9369 4.41932 22.1989 8.24832 21.1269 11.5983C19.4569 16.9083 11.9999 20.9983 11.9999 20.9983C11.9999 20.9983 4.59787 16.9703 2.87187 11.5983Z" stroke="#3E4554" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M2.87187 11.5983C1.79887 8.24832 3.05287 4.41932 6.56987 3.28632C8.41987 2.68932 10.4619 3.04132 11.9999 4.19832C13.4549 3.07332 15.5719 2.69332 17.4199 3.28632C20.9369 4.41932 22.1989 8.24832 21.1269 11.5983C19.4569 16.9083 11.9999 20.9983 11.9999 20.9983C11.9999 20.9983 4.59787 16.9703 2.87187 11.5983Z" stroke="black" stroke-opacity="0.2" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
<g opacity="0.4">
<path d="M16 6.7C17.07 7.046 17.826 8.001 17.917 9.122" stroke="#3E4554" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M16 6.7C17.07 7.046 17.826 8.001 17.917 9.122" stroke="black" stroke-opacity="0.2" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
</g>
</svg>
''';
const String More =
'''<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M12 20C10.8954 20 10 19.1046 10 18C10 16.8954 10.8954 16 12 16C13.1046 16 14 16.8954 14 18C14 19.1046 13.1046 20 12 20ZM12 14C10.8954 14 10 13.1046 10 12C10 10.8954 10.8954 10 12 10C13.1046 10 14 10.8954 14 12C14 12.5304 13.7893 13.0391 13.4142 13.4142C13.0391 13.7893 12.5304 14 12 14ZM12 8C10.8954 8 10 7.10457 10 6C10 4.89543 10.8954 4 12 4C13.1046 4 14 4.89543 14 6C14 6.53043 13.7893 7.03914 13.4142 7.41421C13.0391 7.78929 12.5304 8 12 8Z" fill="#3E4554"/>
<path d="M12 20C10.8954 20 10 19.1046 10 18C10 16.8954 10.8954 16 12 16C13.1046 16 14 16.8954 14 18C14 19.1046 13.1046 20 12 20ZM12 14C10.8954 14 10 13.1046 10 12C10 10.8954 10.8954 10 12 10C13.1046 10 14 10.8954 14 12C14 12.5304 13.7893 13.0391 13.4142 13.4142C13.0391 13.7893 12.5304 14 12 14ZM12 8C10.8954 8 10 7.10457 10 6C10 4.89543 10.8954 4 12 4C13.1046 4 14 4.89543 14 6C14 6.53043 13.7893 7.03914 13.4142 7.41421C13.0391 7.78929 12.5304 8 12 8Z" fill="black" fill-opacity="0.2"/>
</svg>''';
const String Home =
'''<svg width="22" height="23" viewBox="0 0 22 23" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M10.9532 22.1164L11 22.1194L11.0468 22.1164L16.279 21.7894C18.6517 21.6411 20.4997 19.6728 20.4983 17.2955L20.4947 11.3105C20.4941 10.1652 20.0566 9.06315 19.2716 8.22908L14.2709 2.91585C12.4942 1.02805 9.4939 1.02805 7.71714 2.91586L2.7231 8.22203C1.93746 9.05677 1.5 10.1599 1.5 11.3062V17.2981C1.5 19.6744 3.34764 21.6411 5.7193 21.7893L10.9532 22.1164Z" stroke="#3E4554" stroke-width="1.5" stroke-linecap="round"/>
<path d="M10.9532 22.1164L11 22.1194L11.0468 22.1164L16.279 21.7894C18.6517 21.6411 20.4997 19.6728 20.4983 17.2955L20.4947 11.3105C20.4941 10.1652 20.0566 9.06315 19.2716 8.22908L14.2709 2.91585C12.4942 1.02805 9.4939 1.02805 7.71714 2.91586L2.7231 8.22203C1.93746 9.05677 1.5 10.1599 1.5 11.3062V17.2981C1.5 19.6744 3.34764 21.6411 5.7193 21.7893L10.9532 22.1164Z" stroke="black" stroke-opacity="0.2" stroke-width="1.5" stroke-linecap="round"/>
</svg>''';
const String purse =
'''<svg width="18" height="20" viewBox="0 0 18 20" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M13.4485 5.99947C10.2931 6.51121 7.63269 6.4962 4.56871 5.99532C2.47793 5.65353 0.597986 7.48397 1.09451 9.53955L2.86182 16.8562C3.16559 18.1138 4.29303 19 5.58921 19H12.4423C13.7385 19 14.8659 18.1138 15.1697 16.8562L16.9336 9.5536C17.4309 7.49475 15.5431 5.65979 13.4485 5.99947Z" stroke="white" stroke-width="1.5"/>
<path d="M5 8.83231L5.00001 4.49999C5.00001 2.567 6.56701 1 8.50001 1H9.5C11.433 1 13 2.567 13 4.5V9" stroke="white" stroke-width="1.5" stroke-linecap="round"/>
</svg>''';
const String search = '''<svg width="18" height="18" viewBox="0 0 18 18" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M16.3167 15.4549L13.7386 12.9344L13.6782 12.8425C13.5658 12.7306 13.4122 12.6676 13.2519 12.6676C13.0915 12.6676 12.9379 12.7306 12.8256 12.8425C10.6346 14.8525 7.25861 14.9618 4.9365 13.0978C2.6144 11.2338 2.06675 7.97503 3.65676 5.48263C5.24678 2.99023 8.48105 2.03764 11.2146 3.2566C13.9482 4.47557 15.3329 7.48784 14.4503 10.2957C14.3867 10.4985 14.4387 10.7191 14.5866 10.8744C14.7345 11.0296 14.9558 11.0959 15.1673 11.0483C15.3787 11.0007 15.5482 10.8464 15.6117 10.6436C16.6668 7.31148 15.0733 3.72567 11.8621 2.20579C8.65087 0.685921 4.78563 1.68812 2.76679 4.56406C0.747953 7.44001 1.18138 11.3266 3.7867 13.7096C6.39201 16.0926 10.3873 16.2569 13.1881 14.0962L15.4707 16.3279C15.7065 16.5574 16.0876 16.5574 16.3234 16.3279C16.5589 16.0952 16.5589 15.7204 16.3234 15.4877L16.3167 15.4549Z" fill="#F8F9FB"/>
</svg>
''';
double hight = 20;
List<String> AllSvgNames=["Home","Categories","Favorite","More"];
List<String> AllSvg=[Home.toString(),Categories.toString(),Favorite.toString(),More.toString()];

class BottomNavBar extends StatefulWidget {
  final int initialValue;

  BottomNavBar({Key? key, this.initialValue = 0}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  late List<bool> isClickedList;

  @override
  void initState() {
    super.initState();
    isClickedList = List.generate(AllSvg.length, (index) => index == widget.initialValue);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          for (int index = 0; index < AllSvg.length; index++)
            GestureDetector(
              onTap: () {
                setState(() {
                  for (int i = 0; i < isClickedList.length; i++) {
                    isClickedList[i] = (i == index); // Set the clicked index to true, others to false
                  }
                  // Handle navigation here based on index
                  if (index == 0) {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Recommendedpage()));
                  } else if (index == 1) {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Shopbycatogaries()));
                  }
                });
              },
              child: Column(
                children: [
                  // SvgPicture.string(
                  //   AllSvg[index],
                  //   width: hight,
                  //   height: hight,
                  //   color: isClickedList[index] ? Color(0xffF9B023) : Color(0xff8891A5),
                  // ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    AllSvgNames[index],
                    style: TextStyle(
                      color: isClickedList[index] ? Color(0xffF9B023) : Color(0xff8891A5),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}






class SvgPurse extends StatefulWidget {
  @override
  _SvgPurse createState() => _SvgPurse();
}

class _SvgPurse extends State<SvgPurse> {
  bool isColorChange = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isColorChange = !isColorChange;
        });
      },
      child: Column(
        children: [
          // SvgPicture.string(purse,
          //     width: hight,
          //     height: hight,
          //     color: isColorChange ? Colors.yellow : Colors.white)
        ],
      ),
    );
  }
}

class SvgSearch extends StatefulWidget {
  @override
  _SvgSearch createState() => _SvgSearch();
}

class _SvgSearch extends State<SvgSearch> {
  @override
  Widget build(BuildContext context) {

    return GestureDetector(

      onTap: () {
        setState(() {

        });
      },
      child: Column(
        children: [
          // SvgPicture.string(
          //   search,
          //   width: hight,
          //   height: hight,
          //   color: Colors.white,
          // ),

        ],
      ),
    );
  }
}

