import 'package:flutter/widgets.dart';

class MyColors {
  Color get mainBgColor => const Color(0xfffafafa);
  Color get textColor => const Color(0xffd1d1d1);
  Color get textColorBold => const Color(0xff787878);
  Color get iconColor => const Color(0xffc08247);
  Color get unselectedItemColor => const Color(0xfff2f2f2);
  Color get selectedItemColor => const Color(0xffb6b6b6);
  Color get homeGradientDark => const Color(0xff1d1f21);
  Color get homeGradientLight => const Color(0xff4c4d4e);
  Color get topicBgColor => const Color(0xfffbeee2);
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
