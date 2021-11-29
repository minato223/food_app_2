import 'package:flutter/widgets.dart';

class MyColors {
  Color get iconColor => const Color(0xff656668);
  Color get textColor => const Color(0xff9a9c9c);
  Color get mainColor => const Color(0xfffdc913);
  Color get unSelectedIconColor => const Color(0xfff36b6a);
  Color get priceColor => const Color(0xfff36829);
}

class MyFontSize {
  BuildContext context;
  MyFontSize({required this.context});
  double get p1 {
    double aire = MediaQuery.of(context).size.height *
        MediaQuery.of(context).size.width /
        1000;
    return aire * 0.01;
  }

  double get p2 {
    double aire = MediaQuery.of(context).size.height *
        MediaQuery.of(context).size.width /
        1000;
    return aire * 0.02;
  }

  double get p3 {
    double aire = MediaQuery.of(context).size.height *
        MediaQuery.of(context).size.width /
        1000;
    return aire * 0.03;
  }

  double get p4 {
    double aire = MediaQuery.of(context).size.height *
        MediaQuery.of(context).size.width /
        1000;
    return aire * 0.04;
  }

  double get p5 {
    double aire = MediaQuery.of(context).size.height *
        MediaQuery.of(context).size.width /
        1000;
    return aire * 0.05;
  }

  double get p6 {
    double aire = MediaQuery.of(context).size.height *
        MediaQuery.of(context).size.width /
        1000;
    return aire * 0.06;
  }

  double get p7 {
    double aire = MediaQuery.of(context).size.height *
        MediaQuery.of(context).size.width /
        1000;
    return aire * 0.07;
  }

  double get p8 {
    double aire = MediaQuery.of(context).size.height *
        MediaQuery.of(context).size.width /
        1000;
    return aire * 0.08;
  }

  double get p9 {
    double aire = MediaQuery.of(context).size.height *
        MediaQuery.of(context).size.width /
        1000;
    return aire * 0.09;
  }

  double get h1 {
    double aire = MediaQuery.of(context).size.height *
        MediaQuery.of(context).size.width /
        1000;
    return aire * 0.1;
  }

  double get h2 {
    double aire = MediaQuery.of(context).size.height *
        MediaQuery.of(context).size.width /
        1000;
    return aire * 0.2;
  }

  double get h3 {
    double aire = MediaQuery.of(context).size.height *
        MediaQuery.of(context).size.width /
        1000;
    return aire * 0.3;
  }

  double get h4 {
    double aire = MediaQuery.of(context).size.height *
        MediaQuery.of(context).size.width /
        1000;
    return aire * 0.4;
  }

  double get h5 {
    double aire = MediaQuery.of(context).size.height *
        MediaQuery.of(context).size.width /
        1000;
    return aire * 0.5;
  }

  double get h6 {
    double aire = MediaQuery.of(context).size.height *
        MediaQuery.of(context).size.width /
        1000;
    return aire * 0.6;
  }

  double get h7 {
    double aire = MediaQuery.of(context).size.height *
        MediaQuery.of(context).size.width /
        1000;
    return aire * 0.7;
  }

  double get h8 {
    double aire = MediaQuery.of(context).size.height *
        MediaQuery.of(context).size.width /
        1000;
    return aire * 0.8;
  }

  double get h9 {
    double aire = MediaQuery.of(context).size.height *
        MediaQuery.of(context).size.width /
        1000;
    return aire * 0.9;
  }

  double get h10 {
    double aire = MediaQuery.of(context).size.height *
        MediaQuery.of(context).size.width /
        1000;
    return aire;
  }
}
