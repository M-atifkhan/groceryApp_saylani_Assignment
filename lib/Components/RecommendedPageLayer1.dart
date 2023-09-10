import 'package:flutter/material.dart';
import 'package:assignment_flutter_app/Components/colors.dart';
import 'dart:math';
import 'package:assignment_flutter_app/Components/SecondShopByCatogaries.dart';
import 'package:assignment_flutter_app/Components/UpperNavSlider.dart';
class UpperCards extends StatefulWidget {
  @override
  _UpperCardsState createState() => _UpperCardsState();
}
class _UpperCardsState extends State<UpperCards> {
  List<String> images = [];
  int selectedContainerIndex = 0;
  List<String> products = [
    "clothes",
    "watches",
    "shoes",
    "electronics",
    "accessories"
  ];
  List<String> offers = [
    "50% Off",
    "20% Discount",
    "Get Gifts",
    "Limited Offer",
    "Huge Savings"
  ];
  List<String> actions = ["Get", "Grab", "Avail", "Shop for"];
  List<String> locations = ["in-store", "online", "today", "now"];
  List<String> Str1 = [];
  List<String> Str2 = [];
  List<String> Str3 = [];

  @override
  void initState() {
    for (int i = 0; i < 20; i++) {
      images.add("https://source.unsplash.com/random/800x800/?img=${i}");
      String product = products[Random().nextInt(products.length)];
      String offer = offers[Random().nextInt(offers.length)];
      String action = actions[Random().nextInt(actions.length)];
      String location = locations[Random().nextInt(locations.length)];
      Str1.add(action);
      Str2.add(offer);
      Str3.add(location);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
        itemBuilder: (context, index) {
          bool isSelected = selectedContainerIndex == index;
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedContainerIndex = index;
              });
            },
            child: Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.only(left: 10, right: 10),
              // width: 220,
              decoration: BoxDecoration(
                color: isSelected ? Color(0xffF9B023) : Color(0xffC5CDD2),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Center(
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.network(
                            images[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(top: 15, left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              Str1[index] ?? "Get",
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                color: isSelected ? Colors.white : Colors.black,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              Str2[index] ?? "50% OFF",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: isSelected ? Colors.white : Colors.black,
                                fontSize: 27,
                              ),
                            ),
                            Text(
                              Str3[index] ?? "On first 03 order",
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                color: isSelected ? Colors.white : Colors.black,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: images.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

class LowerCards extends StatefulWidget {
  @override
  _LowerCardsState createState() => _LowerCardsState();
}

class _LowerCardsState extends State<LowerCards> {
  List<String> images = [];
  List<String> imag = ["https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9noHfDPE_B8X6GgTj-c39q0NyfgWRBn6iCXmFaU_8TAGk195-NTzCOsW9Og8mF0TbnG0",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIWkQdiwxZ7jMU7Tjdkybei7yt5gVQvMIv9kpucEll&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTh_zvMB9TsulqC9Nf6Yp3RGnJtV5eSw68T00vhYezikw&s",
    "https://media.istockphoto.com/id/589415708/photo/fresh-fruits-and-vegetables.jpg?s=612x612&w=0&k=20&c=aBFGUU-98pnoht73co8r2TZIKF3MDtBBu9KSxtxK_C0="
  ];
  int selectedContainerIndex = -1;
  List<String> products = [
    "Watches",
    "Cloths",
    "Fruits",
    "Vagitables"
  ];
  List<String> price = [
    "Unit \$4",
    "Unit \$5",
    "Unit \$6",
    "Unit \$7",
    "Unit \$8",
    "Unit \$9",
    "Unit \$10"
  ];
  List<String> Str1 = [];
  List<String> Str2 = [];


  @override
  void initState() {
    int j=0;
    int i = 0;
    for (int i = 0; i < products.length; i++) {
      int j = 0;
      int i = 0;
      for (i; i < 20; i++) {
        images.add(imag[j]);
        Str1.add(products[j]);
        Str2.add(price[j]);
        j++;
        if (j > 3) {
          j = 0;
        }

      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.builder(
        itemBuilder: (context, index) {
          bool isSelected = selectedContainerIndex == index;
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedContainerIndex = index;
                Navigator.push(context, MaterialPageRoute(builder:(context)=> Seconshopbycatogries()));
              });
            },
            child: Container(
              margin: EdgeInsets.only(top: 10, left: 20),
              width: 120,
              decoration: BoxDecoration(
                color: isSelected ? Color(0xffF9B023) : Color(0xffC5CDD2),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Center(
                      child: Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.network(
                            images[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(top: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text(
                                Str1[index] ?? "Fresh Lemon",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color:
                                      isSelected ? Colors.white : Colors.black,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text(
                                "Organic",
                                style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  color:
                                      isSelected ? Colors.white : Colors.black,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    Str2[index] ?? "Unit 2USD",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      color: isSelected
                                          ? Colors.white
                                          : Colors.black,
                                      fontSize: 12,
                                    ),
                                  ),
                                  CircleAvatar(
                                    backgroundColor: ColorFiles.MainColor,
                                    radius: 15,
                                    child: Icon(Icons.add, size: 20),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: images.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

class CatogariesCards extends StatefulWidget {
  @override
  _catogariesCards createState() => _catogariesCards();
}
class _catogariesCards extends State<CatogariesCards> {
  List<String> images = [];
  List<String> imag  = ["https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9noHfDPE_B8X6GgTj-c39q0NyfgWRBn6iCXmFaU_8TAGk195-NTzCOsW9Og8mF0TbnG0",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIWkQdiwxZ7jMU7Tjdkybei7yt5gVQvMIv9kpucEll&s",
    "https://img.freepik.com/free-photo/modern-stationary-collection-arrangement_23-2149309642.jpg?t=st=1694098192~exp=1694098792~hmac=1231d3192d06f36aa4a0ae2a25091880952c40becfa9d619352b81c8ffe7c744",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTh_zvMB9TsulqC9Nf6Yp3RGnJtV5eSw68T00vhYezikw&s",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3BYzT0Do8W-ZKLJQ01Jl7BOZLcMKP5In5cHV2Kdt4h01tdKnsWUTfVuQ6A-7_A870JEI",
  "https://media.istockphoto.com/id/1357284270/photo/assortment-of-raw-fresh-meat-on-dark-grunge-background-beef-pork-fish-chicken-and-duck-top.jpg?s=1024x1024&w=is&k=20&c=B_kDyQNQY2Ya3IHbtHeGbotBosZzqvTjHDKC99fM1dg=",
  "https://poultry.extension.org/wp-content/uploads/2019/02/shutterstock_531404539-1024x684.jpg"];
  int selectedContainerIndex = -1;
  List<String> products = [
    "Watches",
    "Cloths",
    "Electrnics",
    "Fruits",
    "Vegetables",
    "Meet and Fishes",
    "Chicken"
  ];
  List<String> price = [
    "Unit \$4",
    "Unit \$5",
    "Unit \$5",
    "Unit \$7",
    "Unit \$8",
    "Unit \$9",
    "Unit \$10"
  ];
  List<String> Str1 = [];
  List<String> Str2 = [];


  @override
  void initState() {
    int j=0;
    int i = 0;
    for (int i = 0; i < products.length; i++) {
      int j = 0;
      int i = 0;
      for (i; i < 20; i++) {
        images.add(imag[j]);
        Str1.add(products[j]);
        Str2.add(price[j]);
        j++;
        if (j > 6) {
          j = 0;
        }

      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      // padding: EdgeInsets.only(left: 10,right: 10),
      crossAxisCount: 2,
      mainAxisSpacing: 2,
      children: List.generate(images.length, (index) {
        bool isSelected = selectedContainerIndex == index;
        return GestureDetector(
          onTap: () {
            setState(() {
              selectedContainerIndex = index;
               Navigator.push(context, MaterialPageRoute(builder:(context)=> Seconshopbycatogries()));

            });
          },
          child: Container(
            margin: EdgeInsets.only(top: 10,left: 10,right: 10),
            // width: 100,
            // height: 500,
            decoration: BoxDecoration(
              color: isSelected ? Color(0xffF9B023) : Color(0xffC5CDD2),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network(
                          images[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.only(top: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              Str1[index] ?? "Fresh Lemon",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color:
                                isSelected ? Colors.white : Colors.black,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              Str2[index] ?? "Unit 2USD",
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                color:
                                isSelected ? Colors.white : Colors.black,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}


class SecondCatogariesCards extends StatefulWidget {
  @override
  _secondcatogariesCards createState() => _secondcatogariesCards();
}
class _secondcatogariesCards extends State<SecondCatogariesCards> {
  List<String> images = [];
  int selectedContainerIndex = -1;
  List<String> products = [
    "Gul Ahmed",
    "Sana Safinaz",
    "Khaadi",
    "Ayesha Bee",
  ];
  List<String> ProductName = [
    "Stylish",
    "Comfortable",
    "High Quality",
    "Trendy",
    "Durable",
  ];
  List<String> price = [
    "Unit \$4",
    "Unit \$5",
    "Unit \$6",
    "Unit \$7",
    "Unit \$8",
    "Unit \$9",
    "Unit \$10"
  ];
  List<String> Str1 = [];
  List<String> Str2 = [];
  List<String> Str3 = [];

  @override
  void initState() {
    for (int i = 0; i < 30; i++) {
      images.add("https://source.unsplash.com/random/900x900/?img=${i}");
      String product = products[Random().nextInt(products.length)];
      String prices = price[Random().nextInt(price.length)];
      String productNames = ProductName[Random().nextInt(ProductName.length)];
      Str1.add(product);
      Str3.add(prices);
      Str2.add(productNames);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.only(left: 10, right: 10),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1, // You can adjust this value for the number of items per row
        mainAxisSpacing: 10, // Adjust vertical spacing
        crossAxisSpacing: 10, // Adjust horizontal spacing
        childAspectRatio: 2, // Adjust the aspect ratio (width/height) of each item
      ),
      itemCount: images.length,
      itemBuilder: (context, index) {
        bool isSelected = selectedContainerIndex == index;
        return GestureDetector(
          onTap: () {
            setState(() {
              selectedContainerIndex = index;
            });
          },
          child: Container(
            margin: EdgeInsets.only(top: 10, left: 10, right: 10),
            decoration: BoxDecoration(
              color: isSelected ? Color(0xffF9B023) : Color(0xffE3EFEA),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 140,
                  height: 240,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.network(
                      images[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          Str1[index] ?? "Fresh Lemon",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: isSelected ? Colors.white : Colors.black,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10,top: 5),
                        child: Text(
                          Str2[index] ?? "Unit 2USD",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: isSelected ? Colors.white : Color(0xff8891A5),
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10,top: 40),
                        child: Text(
                          "Starting From",
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            color: isSelected ? Colors.white : Color(0xff8891A5),
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10,top: 5),
                        child: Text(
                          Str3[index] ?? "Unit 2USD",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: isSelected ? Colors.white : Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );


  }

}

class Watches extends StatefulWidget {
  @override
  _Watches createState() => _Watches();
}
class _Watches extends State<Watches> {
  List<String> images = [];
  int selectedContainerIndex = -1;
  List<String> products = [
    "Sports Watches", "Running Watches", "Diving Watches", "Outdoor Watches",
    "Luxury Watches", "High-End Brands", "Designer Watches","Smartwatches", "Fitness Trackers", "Health Monitoring",
    "Dress Watches", "Formal Watches", "Fashion Watches"];
  List<String> ProductName = [
    "Sports Watches", "Running Watches", "Diving Watches", "Outdoor Watches",
    "Luxury Watches", "High-End Brands", "Designer Watches","Smartwatches", "Fitness Trackers", "Health Monitoring",
    "Dress Watches", "Formal Watches", "Fashion Watches"];
  List<String> price = [
    "Unit \$4",
    "Unit \$5",
    "Unit \$6",
    "Unit \$7",
    "Unit \$8",
    "Unit \$9",
    "Unit \$10"
  ];
  List<String> Str1 = [];
  List<String> Str2 = [];
  List<String> Str3 = [];

  @override
  void initState() {
    for (int i = 0; i < 30; i++) {
      images.add("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9noHfDPE_B8X6GgTj-c39q0NyfgWRBn6iCXmFaU_8TAGk195-NTzCOsW9Og8mF0TbnG0");
      String product = products[Random().nextInt(products.length)];
      String prices = price[Random().nextInt(price.length)];
      String productNames = ProductName[Random().nextInt(ProductName.length)];
      Str1.add(product);
      Str3.add(prices);
      Str2.add(productNames);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.only(left: 10, right: 10),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1, // You can adjust this value for the number of items per row
        mainAxisSpacing: 10, // Adjust vertical spacing
        crossAxisSpacing: 10, // Adjust horizontal spacing
        childAspectRatio: 2, // Adjust the aspect ratio (width/height) of each item
      ),
      itemCount: images.length,
      itemBuilder: (context, index) {
        bool isSelected = selectedContainerIndex == index;
        return GestureDetector(
          onTap: () {
            setState(() {
              selectedContainerIndex = index;
            });
          },
          child: Container(
            margin: EdgeInsets.only(top: 10, left: 10, right: 10),
            decoration: BoxDecoration(
              color: isSelected ? Color(0xffF9B023) : Color(0xffE3EFEA),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 140,
                  height: 240,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.network(
                      images[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          Str1[index] ?? "Fresh Lemon",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: isSelected ? Colors.white : Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10,top: 5),
                        child: Text(
                          Str2[index] ?? "Unit 2USD",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: isSelected ? Colors.white : Color(0xff8891A5),
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10,top: 40),
                        child: Text(
                          "Starting From",
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            color: isSelected ? Colors.white : Color(0xff8891A5),
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10,top: 5),
                        child: Text(
                          Str3[index] ?? "Unit 2USD",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: isSelected ? Colors.white : Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );


  }

}
class Cloths extends StatefulWidget {
  @override
  _Cloths createState() => _Cloths();
}
class _Cloths extends State<Cloths> {
  List<String> images = [];
  int selectedContainerIndex = -1;
  List<String> products = [
    "T-Shirts", "Jeans", "Dresses", "Jackets",
    "Suits", "Ties", "Scarves", "Shirts", "Sweaters", "Blouses",
    "Suits", "Dress Shirts", "Dresses"
  ];
  List<String> ProductName = [
    "T-Shirts", "Jeans", "Dresses", "Jackets",
    "Suits", "Ties", "Scarves", "Shirts", "Sweaters", "Blouses",
    "Suits", "Dress Shirts", "Dresses"
  ];
  List<String> price = [
    "Unit \$4",
    "Unit \$5",
    "Unit \$6",
    "Unit \$7",
    "Unit \$8",
    "Unit \$9",
    "Unit \$10"
  ];
  List<String> Str1 = [];
  List<String> Str2 = [];
  List<String> Str3 = [];

  @override
  void initState() {
    for (int i = 0; i < 30; i++) {
      images.add("https://source.unsplash.com/random/900x900/?img=${i}");
      String product = products[Random().nextInt(products.length)];
      String prices = price[Random().nextInt(price.length)];
      String productNames = ProductName[Random().nextInt(ProductName.length)];
      Str1.add(product);
      Str3.add(prices);
      Str2.add(productNames);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.only(left: 10, right: 10),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1, // You can adjust this value for the number of items per row
        mainAxisSpacing: 10, // Adjust vertical spacing
        crossAxisSpacing: 10, // Adjust horizontal spacing
        childAspectRatio: 2, // Adjust the aspect ratio (width/height) of each item
      ),
      itemCount: images.length,
      itemBuilder: (context, index) {
        bool isSelected = selectedContainerIndex == index;
        return GestureDetector(
          onTap: () {
            setState(() {
              selectedContainerIndex = index;
            });
          },
          child: Container(
            margin: EdgeInsets.only(top: 10, left: 10, right: 10),
            decoration: BoxDecoration(
              color: isSelected ? Color(0xffF9B023) : Color(0xffE3EFEA),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 140,
                  height: 240,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.network(
                      images[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          Str1[index] ?? "Fresh Lemon",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: isSelected ? Colors.white : Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10,top: 5),
                        child: Text(
                          Str2[index] ?? "Unit 2USD",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: isSelected ? Colors.white : Color(0xff8891A5),
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10,top: 40),
                        child: Text(
                          "Starting From",
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            color: isSelected ? Colors.white : Color(0xff8891A5),
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10,top: 5),
                        child: Text(
                          Str3[index] ?? "Unit 2USD",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: isSelected ? Colors.white : Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );


  }

}
class Shoes extends StatefulWidget {
  @override
  _Shoes createState() => _Shoes();
}
class _Shoes extends State<Shoes> {
  List<String> images = [];
  int selectedContainerIndex = -1;
  List<String> products = [
    "Running Shoes", "Sneakers", "Loafers", "Boots",
    "Dress Shoes", "Slippers", "Sandals", "Oxfords", "Hiking Boots", "Espadrilles",
    "Athletic Shoes", "Flip Flops", "Moccasins"
  ];
  List<String> ProductName = [
  "Running Shoes", "Sneakers", "Loafers", "Boots",
  "Dress Shoes", "Slippers", "Sandals", "Oxfords", "Hiking Boots", "Espadrilles",
  "Athletic Shoes", "Flip Flops", "Moccasins"
  ];
  List<String> price = [
    "Unit \$4",
    "Unit \$5",
    "Unit \$6",
    "Unit \$7",
    "Unit \$8",
    "Unit \$9",
    "Unit \$10"
  ];
  List<String> Str1 = [];
  List<String> Str2 = [];
  List<String> Str3 = [];

  @override
  void initState() {
    for (int i = 0; i < 30; i++) {
      images.add("https://www.eslbuzz.com/wp-content/uploads/2017/10/shoes-_vocabulary-1.jpg");
      String product = products[Random().nextInt(products.length)];
      String prices = price[Random().nextInt(price.length)];
      String productNames = ProductName[Random().nextInt(ProductName.length)];
      Str1.add(product);
      Str3.add(prices);
      Str2.add(productNames);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.only(left: 10, right: 10),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1, // You can adjust this value for the number of items per row
        mainAxisSpacing: 10, // Adjust vertical spacing
        crossAxisSpacing: 10, // Adjust horizontal spacing
        childAspectRatio: 2, // Adjust the aspect ratio (width/height) of each item
      ),
      itemCount: images.length,
      itemBuilder: (context, index) {
        bool isSelected = selectedContainerIndex == index;
        return GestureDetector(
          onTap: () {
            setState(() {
              selectedContainerIndex = index;
            });
          },
          child: Container(
            margin: EdgeInsets.only(top: 10, left: 10, right: 10),
            decoration: BoxDecoration(
              color: isSelected ? Color(0xffF9B023) : Color(0xffE3EFEA),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 140,
                  height: 240,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.network(
                      images[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          Str1[index] ?? "Fresh Lemon",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: isSelected ? Colors.white : Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10,top: 5),
                        child: Text(
                          Str2[index] ?? "Unit 2USD",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: isSelected ? Colors.white : Color(0xff8891A5),
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10,top: 40),
                        child: Text(
                          "Starting From",
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            color: isSelected ? Colors.white : Color(0xff8891A5),
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10,top: 5),
                        child: Text(
                          Str3[index] ?? "Unit 2USD",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: isSelected ? Colors.white : Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );


  }

}
class Electronics extends StatefulWidget {
  @override
  _Electronics createState() => _Electronics();
}
class _Electronics extends State<Electronics> {
  List<String> images = [];
  int selectedContainerIndex = -1;
  List<String> products = [
    "Smartphones", "Laptops", "Tablets", "Headphones",
    "Smartwatches", "Cameras", "Televisions", "Gaming Consoles", "Speakers", "Printers",
    "Drones", "Fitness Trackers", "VR Headsets"
  ];
  List<String> ProductName = [
    "Smartphones", "Laptops", "Tablets", "Headphones",
    "Smartwatches", "Cameras", "Televisions", "Gaming Consoles", "Speakers", "Printers",
    "Drones", "Fitness Trackers", "VR Headsets"
  ];
  List<String> price = [
    "Unit \$4",
    "Unit \$5",
    "Unit \$6",
    "Unit \$7",
    "Unit \$8",
    "Unit \$9",
    "Unit \$10"
  ];
  List<String> Str1 = [];
  List<String> Str2 = [];
  List<String> Str3 = [];

  @override
  void initState() {
    for (int i = 0; i < 30; i++) {
      images.add("https://img.freepik.com/premium-photo/3d-set-home-appliances-white-background_751108-1072.jpg?w=1060");
      String product = products[Random().nextInt(products.length)];
      String prices = price[Random().nextInt(price.length)];
      String productNames = ProductName[Random().nextInt(ProductName.length)];
      Str1.add(product);
      Str3.add(prices);
      Str2.add(productNames);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.only(left: 10, right: 10),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1, // You can adjust this value for the number of items per row
        mainAxisSpacing: 10, // Adjust vertical spacing
        crossAxisSpacing: 10, // Adjust horizontal spacing
        childAspectRatio: 2, // Adjust the aspect ratio (width/height) of each item
      ),
      itemCount: images.length,
      itemBuilder: (context, index) {
        bool isSelected = selectedContainerIndex == index;
        return GestureDetector(
          onTap: () {
            setState(() {
              selectedContainerIndex = index;
            });
          },
          child: Container(
            margin: EdgeInsets.only(top: 10, left: 10, right: 10),
            decoration: BoxDecoration(
              color: isSelected ? Color(0xffF9B023) : Color(0xffE3EFEA),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 140,
                  height: 240,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.network(
                      images[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          Str1[index] ?? "Fresh Lemon",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: isSelected ? Colors.white : Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10,top: 5),
                        child: Text(
                          Str2[index] ?? "Unit 2USD",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: isSelected ? Colors.white : Color(0xff8891A5),
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10,top: 40),
                        child: Text(
                          "Starting From",
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            color: isSelected ? Colors.white : Color(0xff8891A5),
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10,top: 5),
                        child: Text(
                          Str3[index] ?? "Unit 2USD",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: isSelected ? Colors.white : Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );


  }

}

class Fruits extends StatefulWidget {
  @override
  _Fruits createState() => _Fruits();
}
class _Fruits extends State<Fruits> {
  List<String> images = [];
  int selectedContainerIndex = -1;
  List<String> products = [
    "Apple", "Banana", "Orange", "Grapes",
    "Strawberry", "Pineapple", "Mango", "Blueberry", "Watermelon", "Kiwi",
    "Peach", "Cherry", "Pear"
  ];
  List<String> ProductName = [
    "Apple", "Banana", "Orange", "Grapes",
    "Strawberry", "Pineapple", "Mango", "Blueberry", "Watermelon", "Kiwi",
    "Peach", "Cherry", "Pear"
  ];
  List<String> price = [
    "Unit \$4",
    "Unit \$5",
    "Unit \$6",
    "Unit \$7",
    "Unit \$8",
    "Unit \$9",
    "Unit \$10"
  ];
  List<String> Str1 = [];
  List<String> Str2 = [];
  List<String> Str3 = [];

  @override
  void initState() {
    for (int i = 0; i < 30; i++) {
      images.add("https://media.istockphoto.com/id/529664572/photo/fruit-background.jpg?s=612x612&w=0&k=20&c=K7V0rVCGj8tvluXDqxJgu0AdMKF8axP0A15P-8Ksh3I=");
      String product = products[Random().nextInt(products.length)];
      String prices = price[Random().nextInt(price.length)];
      String productNames = ProductName[Random().nextInt(ProductName.length)];
      Str1.add(product);
      Str3.add(prices);
      Str2.add(productNames);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.only(left: 10, right: 10),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1, // You can adjust this value for the number of items per row
        mainAxisSpacing: 10, // Adjust vertical spacing
        crossAxisSpacing: 10, // Adjust horizontal spacing
        childAspectRatio: 2, // Adjust the aspect ratio (width/height) of each item
      ),
      itemCount: images.length,
      itemBuilder: (context, index) {
        bool isSelected = selectedContainerIndex == index;
        return GestureDetector(
          onTap: () {
            setState(() {
              selectedContainerIndex = index;
            });
          },
          child: Container(
            margin: EdgeInsets.only(top: 10, left: 10, right: 10),
            decoration: BoxDecoration(
              color: isSelected ? Color(0xffF9B023) : Color(0xffE3EFEA),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 140,
                  height: 240,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.network(
                      images[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          Str1[index] ?? "Fresh Lemon",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: isSelected ? Colors.white : Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10,top: 5),
                        child: Text(
                          Str2[index] ?? "Unit 2USD",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: isSelected ? Colors.white : Color(0xff8891A5),
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10,top: 40),
                        child: Text(
                          "Starting From",
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            color: isSelected ? Colors.white : Color(0xff8891A5),
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10,top: 5),
                        child: Text(
                          Str3[index] ?? "Unit 2USD",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: isSelected ? Colors.white : Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );


  }

}

class Vegetables extends StatefulWidget {
  @override
  _Vegetables createState() => _Vegetables();
}
class _Vegetables extends State<Vegetables> {
  List<String> images = [];
  int selectedContainerIndex = -1;
  List<String> products = [
  "Tomato", "Cucumber", "Carrot", "Broccoli",
  "Bell Pepper", "Cabbage", "Spinach", "Potato", "Mushroom", "Zucchini",
  "Eggplant", "Celery", "Cauliflower"
  ];
  List<String> ProductName = [
    "Tomato", "Cucumber", "Carrot", "Broccoli",
    "Bell Pepper", "Cabbage", "Spinach", "Potato", "Mushroom", "Zucchini",
    "Eggplant", "Celery", "Cauliflower"
  ];
  List<String> price = [
    "Unit \$4",
    "Unit \$5",
    "Unit \$6",
    "Unit \$7",
    "Unit \$8",
    "Unit \$9",
    "Unit \$10"
  ];
  List<String> Str1 = [];
  List<String> Str2 = [];
  List<String> Str3 = [];

  @override
  void initState() {
    for (int i = 0; i < 30; i++) {
      images.add("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3BYzT0Do8W-ZKLJQ01Jl7BOZLcMKP5In5cHV2Kdt4h01tdKnsWUTfVuQ6A-7_A870JEI");
      String product = products[Random().nextInt(products.length)];
      String prices = price[Random().nextInt(price.length)];
      String productNames = ProductName[Random().nextInt(ProductName.length)];
      Str1.add(product);
      Str3.add(prices);
      Str2.add(productNames);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.only(left: 10, right: 10),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1, // You can adjust this value for the number of items per row
        mainAxisSpacing: 10, // Adjust vertical spacing
        crossAxisSpacing: 10, // Adjust horizontal spacing
        childAspectRatio: 2, // Adjust the aspect ratio (width/height) of each item
      ),
      itemCount: images.length,
      itemBuilder: (context, index) {
        bool isSelected = selectedContainerIndex == index;
        return GestureDetector(
          onTap: () {
            setState(() {
              selectedContainerIndex = index;
            });
          },
          child: Container(
            margin: EdgeInsets.only(top: 10, left: 10, right: 10),
            decoration: BoxDecoration(
              color: isSelected ? Color(0xffF9B023) : Color(0xffE3EFEA),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 140,
                  height: 240,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.network(
                      images[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          Str1[index] ?? "Fresh Lemon",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: isSelected ? Colors.white : Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10,top: 5),
                        child: Text(
                          Str2[index] ?? "Unit 2USD",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: isSelected ? Colors.white : Color(0xff8891A5),
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10,top: 40),
                        child: Text(
                          "Starting From",
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            color: isSelected ? Colors.white : Color(0xff8891A5),
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10,top: 5),
                        child: Text(
                          Str3[index] ?? "Unit 2USD",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: isSelected ? Colors.white : Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );


  }

}

class Fishes extends StatefulWidget {
  @override
  _Fishes createState() => _Fishes();
}
class _Fishes extends State<Fishes> {
  List<String> images = [];
  int selectedContainerIndex = -1;
  List<String> products = [
    "Salmon", "Tuna", "Cod", "Trout",
    "Catfish", "Swordfish", "Mackerel", "Halibut", "Haddock", "Perch",
    "Barramundi", "Sardines", "Rainbow Trout"
  ];
  List<String> ProductName = [
    "Salmon", "Tuna", "Cod", "Trout",
    "Catfish", "Swordfish", "Mackerel", "Halibut", "Haddock", "Perch",
    "Barramundi", "Sardines", "Rainbow Trout"
  ];
  List<String> price = [
    "Unit \$4",
    "Unit \$5",
    "Unit \$6",
    "Unit \$7",
    "Unit \$8",
    "Unit \$9",
    "Unit \$10"
  ];
  List<String> Str1 = [];
  List<String> Str2 = [];
  List<String> Str3 = [];

  @override
  void initState() {
    for (int i = 0; i < 30; i++) {
      images.add("https://media.istockphoto.com/id/470981381/photo/fresh-seafood.jpg?s=612x612&w=0&k=20&c=KTg6I9SsAm7UShn0dpWmaVv-MKLi0LgI48CcpftPDYQ=");
      String product = products[Random().nextInt(products.length)];
      String prices = price[Random().nextInt(price.length)];
      String productNames = ProductName[Random().nextInt(ProductName.length)];
      Str1.add(product);
      Str3.add(prices);
      Str2.add(productNames);
      }
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.only(left: 10, right: 10),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1, // You can adjust this value for the number of items per row
        mainAxisSpacing: 10, // Adjust vertical spacing
        crossAxisSpacing: 10, // Adjust horizontal spacing
        childAspectRatio: 2, // Adjust the aspect ratio (width/height) of each item
      ),
      itemCount: images.length,
      itemBuilder: (context, index) {
        bool isSelected = selectedContainerIndex == index;
        return GestureDetector(
          onTap: () {
            setState(() {
              selectedContainerIndex = index;
            });
          },
          child: Container(
            margin: EdgeInsets.only(top: 10, left: 10, right: 10),
            decoration: BoxDecoration(
              color: isSelected ? Color(0xffF9B023) : Color(0xffE3EFEA),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 140,
                  height: 240,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.network(
                      images[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          Str1[index] ?? "Fresh Lemon",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: isSelected ? Colors.white : Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10,top: 5),
                        child: Text(
                          Str2[index] ?? "Unit 2USD",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: isSelected ? Colors.white : Color(0xff8891A5),
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10,top: 40),
                        child: Text(
                          "Starting From",
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            color: isSelected ? Colors.white : Color(0xff8891A5),
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10,top: 5),
                        child: Text(
                          Str3[index] ?? "Unit 2USD",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: isSelected ? Colors.white : Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );


  }

}
