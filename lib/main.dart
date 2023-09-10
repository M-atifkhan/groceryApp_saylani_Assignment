import 'package:flutter/material.dart';
import './Components/Sliders.dart';
import './Components/colors.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Mini Flutter Project",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: ColorFiles.MainColor,
      ),
      home:HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {
  PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorFiles.MainColor,
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: SliderPageView(), 
    
    );
  }
}

