import 'package:flutter/material.dart';
import 'package:food_app_2/screens/home.dart';
import 'package:food_app_2/services/constant.dart';

class Detail extends StatefulWidget {
  final Food food;
  const Detail({Key? key, required this.food}) : super(key: key);

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  final List<String> _topics = [
    "assets/images/soda2.png",
    "assets/images/salad.png",
    "assets/images/french-fries.png"
  ];
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(
            children: [
              Container(
                height: _height * 0.6,
                width: double.infinity,
                decoration: BoxDecoration(
                    gradient: RadialGradient(
                  colors: [
                    MyColors().homeGradientLight,
                    MyColors().homeGradientDark,
                  ],
                )),
                child: Hero(
                  tag: widget.food.id,
                  child: Image.asset(
                    widget.food.img,
                    scale: 2.2,
                  ),
                ),
              ),
              SizedBox(
                height: _height * 0.4,
              )
            ],
          ),
          Container(
            height: _height * 0.5,
            width: double.infinity,
            padding: EdgeInsets.fromLTRB(
                _width * 0.06, _width * 0.06, _width * 0.06, 0),
            decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.only(topLeft: Radius.circular(_width * 0.08)),
                color: Colors.white),
            child: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: _width * 0.03, vertical: _width * 0.02),
                      decoration: BoxDecoration(
                          color: MyColors().homeGradientDark,
                          borderRadius: BorderRadius.circular(_width * 0.04)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.star_rate_rounded,
                              color: Colors.orange[600],
                              size: MyFontSize(context: context).p5),
                          SizedBox(width: _width * 0.01),
                          Text(
                            widget.food.rate.toString(),
                            style: TextStyle(
                                fontFamily: "Ubuntu",
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                                fontSize: MyFontSize(context: context).p4),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          color: MyColors().iconColor,
                          padding:
                              EdgeInsets.symmetric(horizontal: _width * 0.02),
                          child: InkWell(
                            child: Text(
                              "-",
                              style: TextStyle(
                                  fontFamily: "Ubuntu",
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: MyFontSize(context: context).p6),
                            ),
                          ),
                        ),
                        Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: _width * 0.03),
                          child: Text(
                            "2",
                            style: TextStyle(
                                fontFamily: "Ubuntu",
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: MyFontSize(context: context).p4),
                          ),
                        ),
                        Container(
                          color: MyColors().iconColor,
                          padding: EdgeInsets.symmetric(
                              horizontal: _width * 0.02,
                              vertical: _width * 0.005),
                          child: Text(
                            "+",
                            style: TextStyle(
                                fontFamily: "Ubuntu",
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: MyFontSize(context: context).p5),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(height: _height * 0.03),
                Text(
                  widget.food.title,
                  style: TextStyle(
                      fontFamily: "Ubuntu",
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: MyFontSize(context: context).p5),
                ),
                SizedBox(height: _height * 0.03),
                Text(
                  "Laboriosam assumenda et sequi eveniet ullam ullam excepturi. Similique molestiae quaerat consequatur suscipit exercitationem nostrum. ",
                  style: TextStyle(
                      fontFamily: "Ubuntu",
                      color: Colors.black54,
                      fontWeight: FontWeight.w400,
                      fontSize: MyFontSize(context: context).p4),
                ),
                SizedBox(height: _height * 0.03),
                Text(
                  "Add toping",
                  style: TextStyle(
                      fontFamily: "Ubuntu",
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: MyFontSize(context: context).p5),
                ),
                SizedBox(height: _height * 0.03),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: _width * 0.04),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: _topics.map(topicBuilder).toList(),
                  ),
                ),
                SizedBox(height: _height * 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(_width * 0.03),
                        decoration: BoxDecoration(
                            color: MyColors().topicBgColor,
                            borderRadius: BorderRadius.circular(_width * 0.02)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Total price",
                              style: TextStyle(
                                  fontFamily: "Ubuntu",
                                  color: MyColors().textColorBold,
                                  fontWeight: FontWeight.w400,
                                  fontSize: MyFontSize(context: context).p5),
                            ),
                            SizedBox(height: _height * 0.01),
                            Text(
                              "\$33.00",
                              style: TextStyle(
                                  fontFamily: "Ubuntu",
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: MyFontSize(context: context).p6),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: _width * 0.02),
                    Expanded(
                      child: TextButton(
                          onPressed: () {},
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: _width * 0.03,
                                vertical: _height * 0.03),
                            decoration: BoxDecoration(
                                color: MyColors().homeGradientDark,
                                borderRadius:
                                    BorderRadius.circular(_width * 0.02)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.shopping_cart_outlined,
                                  color: MyColors().iconColor,
                                  size: MyFontSize(context: context).p8,
                                ),
                                SizedBox(width: _width * 0.01),
                                Text(
                                  "Go to Cart",
                                  style: TextStyle(
                                      fontFamily: "Ubuntu",
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize:
                                          MyFontSize(context: context).p6),
                                ),
                              ],
                            ),
                          )),
                    )
                  ],
                ),
                SizedBox(height: _height * 0.1)
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget topicBuilder(String url) {
    return Builder(builder: (context) {
      double _width = MediaQuery.of(context).size.width;
      return Container(
        width: _width * 0.25,
        height: _width * 0.25,
        decoration: BoxDecoration(
            color: MyColors().topicBgColor,
            borderRadius: BorderRadius.circular(_width * 0.02)),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Center(
              child: Image.asset(
                url,
                width: _width * 0.15,
              ),
            ),
            Transform.translate(
              offset: Offset(_width * 0.02, -_width * 0.02),
              child: CircleAvatar(
                backgroundColor: const Color(0xffffd7b0),
                radius: _width * 0.03,
                child: Icon(
                  Icons.add,
                  size: MyFontSize(context: context).p5,
                  color: const Color(0xffcc935c),
                ),
              ),
            )
          ],
        ),
      );
    });
  }
}
