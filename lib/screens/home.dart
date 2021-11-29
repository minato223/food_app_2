import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_app_2/services/constant.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Categorie> _categories = [
    Categorie(
        id: 0,
        img: "assets/images/food4.png",
        isSelected: true,
        nom: "Fast Food"),
    Categorie(
        id: 1,
        img: "assets/images/food3.png",
        isSelected: false,
        nom: "Health Food"),
    Categorie(
        id: 2,
        img: "assets/images/food5.png",
        isSelected: false,
        nom: "Fruit Food"),
    Categorie(
        id: 3, img: "assets/images/soda1.png", isSelected: false, nom: "Soda"),
    Categorie(
        id: 4, img: "assets/images/soda3.png", isSelected: false, nom: "Juice"),
  ];
  final List<Item> _items = [
    Item(
        img: "assets/images/food5.png",
        nom: "Burgur Queen",
        price: 12.00,
        value: 2.2),
    Item(
        img: "assets/images/food6.png",
        nom: "Delicious Pizza",
        price: 14.00,
        value: 3.7),
    Item(
        img: "assets/images/food4.png",
        nom: "Chilly Paper",
        price: 11.00,
        value: 3.0),
  ];
  final List<Food> _foods = [
    Food(
        id: 0,
        img: "assets/images/food7.png",
        rate: 5.0,
        subtitle: "Chilly paper",
        price: 32.00,
        title: "Sandwish"),
    Food(
        id: 1,
        img: "assets/images/food1.png",
        rate: 5.0,
        subtitle: "French sandwish",
        price: 32.00,
        title: "Burgur"),
  ];
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: MyColors().mainBgColor,
      body: SafeArea(
          child: ListView(
        shrinkWrap: true,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(
                _width * 0.05, _width * 0.03, _width * 0.05, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello Minato",
                  style: TextStyle(
                      fontFamily: "Ubuntu",
                      fontSize: MyFontSize(context: context).p4),
                ),
                Text(
                  "Welcome back!",
                  style: TextStyle(
                      fontFamily: "Ubuntu",
                      fontSize: MyFontSize(context: context).h1),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: _height * 0.03),
                  padding: EdgeInsets.symmetric(vertical: _height * 0.003),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(_width * 0.03)),
                  child: Row(
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: _width * 0.03),
                        child: Icon(
                          CupertinoIcons.search_circle,
                          size: MyFontSize(context: context).p7,
                          color: MyColors().iconColor,
                        ),
                      ),
                      Expanded(
                          child: TextField(
                        style: TextStyle(
                            fontFamily: "Ubuntu",
                            fontSize: MyFontSize(context: context).p5,
                            fontWeight: FontWeight.w200),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search",
                            hintStyle: TextStyle(
                                fontFamily: "Ubuntu",
                                fontSize: MyFontSize(context: context).p5,
                                fontWeight: FontWeight.w200)),
                      ))
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: _width * 0.05),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: _categories.map(categorieBuilder).toList(),
              ),
            ),
          ),
          SizedBox(height: _height * 0.02),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: _width * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Favorite",
                  style: TextStyle(
                      fontFamily: "Ubuntu",
                      fontWeight: FontWeight.w600,
                      fontSize: MyFontSize(context: context).p5),
                ),
                SizedBox(height: _height * 0.02),
                Row(
                  children: [
                    Expanded(child: favoriteItemBuilder(food: _foods[0])),
                    SizedBox(width: _width * 0.04),
                    Expanded(child: favoriteItemBuilder(food: _foods[1])),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: _height * 0.03),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: _width * 0.05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "More restaurants",
                  style: TextStyle(
                      fontFamily: "Ubuntu",
                      fontWeight: FontWeight.w600,
                      fontSize: MyFontSize(context: context).p5),
                ),
                Text(
                  "See all",
                  style: TextStyle(
                      fontFamily: "Ubuntu",
                      fontWeight: FontWeight.w600,
                      color: MyColors().iconColor,
                      fontSize: MyFontSize(context: context).p5),
                ),
              ],
            ),
          ),
          SizedBox(height: _height * 0.03),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: _width * 0.05),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: _items.map(foodItemBuilder).toList()),
          ),
        ],
      )),
    );
  }

  Widget foodItemBuilder(Item item) {
    return Builder(builder: (context) {
      double _width = MediaQuery.of(context).size.width;
      double _height = MediaQuery.of(context).size.height;
      return Container(
        padding: EdgeInsets.all(_width * 0.04),
        margin: EdgeInsets.only(bottom: _height * 0.02),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(_width * 0.05)),
        child: Row(
          children: [
            Container(
              height: _width * 0.2,
              width: _width * 0.2,
              padding: EdgeInsets.all(_width * 0.01),
              margin: EdgeInsets.only(right: _width * 0.02),
              decoration: BoxDecoration(
                  color: MyColors().homeGradientDark,
                  borderRadius: BorderRadius.circular(_width * 0.03)),
              child: Image.asset(item.img),
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.nom,
                  style: TextStyle(
                      fontFamily: "Ubuntu",
                      color: MyColors().textColorBold,
                      fontWeight: FontWeight.w500,
                      fontSize: MyFontSize(context: context).p4),
                ),
                SizedBox(height: _height * 0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: List.generate(
                          5,
                          (index) => Icon(
                                Icons.star_rate_rounded,
                                color: Colors.orange[600],
                                size: MyFontSize(context: context).p5,
                              )),
                    ),
                    Text(
                      "\$${item.price}0",
                      style: TextStyle(
                          fontFamily: "Ubuntu",
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                          fontSize: MyFontSize(context: context).p4),
                    ),
                  ],
                ),
                SizedBox(height: _height * 0.01),
                Text(
                  "${item.value} cm",
                  style: TextStyle(
                      fontFamily: "Ubuntu",
                      color: MyColors().textColorBold,
                      fontWeight: FontWeight.w500,
                      fontSize: MyFontSize(context: context).p4),
                ),
              ],
            ))
          ],
        ),
      );
    });
  }

  Widget favoriteItemBuilder({required Food food}) {
    return Builder(builder: (context) {
      double _width = MediaQuery.of(context).size.width;
      double _height = MediaQuery.of(context).size.height;
      return Container(
        padding: EdgeInsets.all(_width * 0.04),
        decoration: BoxDecoration(
            gradient: RadialGradient(
              colors: [
                MyColors().homeGradientLight,
                MyColors().homeGradientDark,
              ],
            ),
            borderRadius: BorderRadius.circular(_width * 0.05)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              food.img,
              width: double.infinity,
              height: _height * 0.2,
            ),
            Text(
              food.title,
              style: TextStyle(
                  fontFamily: "Ubuntu",
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: MyFontSize(context: context).p5),
            ),
            SizedBox(height: _height * 0.01),
            Text(
              food.subtitle,
              style: TextStyle(
                  fontFamily: "Ubuntu",
                  color: MyColors().textColor,
                  fontWeight: FontWeight.w200,
                  fontSize: MyFontSize(context: context).p4),
            ),
            SizedBox(height: _height * 0.01),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: List.generate(
                      5,
                      (index) => Icon(
                            Icons.star_rate_rounded,
                            color: Colors.orange[600],
                            size: MyFontSize(context: context).p5,
                          )),
                ),
                Text(
                  "\$${food.price}",
                  style: TextStyle(
                      fontFamily: "Ubuntu",
                      color: MyColors().textColor,
                      fontWeight: FontWeight.w200,
                      fontSize: MyFontSize(context: context).p4),
                ),
              ],
            )
          ],
        ),
      );
    });
  }

  Widget categorieBuilder(Categorie categorie) {
    return Builder(builder: (context) {
      double _width = MediaQuery.of(context).size.width;
      double _height = MediaQuery.of(context).size.height;
      return Container(
        margin: EdgeInsets.only(right: _width * 0.02),
        padding: EdgeInsets.symmetric(
            horizontal: _width * 0.016, vertical: _height * 0.005),
        decoration: BoxDecoration(
            color: categorie.isSelected
                ? MyColors().iconColor
                : MyColors().unselectedItemColor,
            borderRadius: BorderRadius.circular(_width * 0.02)),
        child: Row(
          children: [
            Image.asset(categorie.img, width: _width * 0.07),
            SizedBox(
              width: _width * 0.01,
            ),
            Text(
              categorie.nom,
              style: TextStyle(
                  fontFamily: "Ubuntu",
                  color: categorie.isSelected
                      ? Colors.white
                      : MyColors().selectedItemColor,
                  fontWeight: FontWeight.w600,
                  fontSize: MyFontSize(context: context).p4),
            ),
          ],
        ),
      );
    });
  }
}

class Food {
  int id;
  String img;
  String title;
  String subtitle;
  double rate;
  double price;
  Food(
      {required this.id,
      required this.img,
      required this.rate,
      required this.subtitle,
      required this.price,
      required this.title});
}

class Categorie {
  int id;
  String nom;
  String img;
  bool isSelected;
  Categorie(
      {required this.id,
      required this.img,
      required this.isSelected,
      required this.nom});
}

class Item {
  String nom;
  double value;
  double price;
  String img;
  Item(
      {required this.img,
      required this.nom,
      required this.price,
      required this.value});
}
