import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepPurple,
       fontFamily: 'BebasNeue',
      cardColor: Colors.white,
      canvasColor: ligthPurple,
      buttonColor: darkPurple,
      accentColor: darkPurple,
      appBarTheme: AppBarTheme(
        color: darkPurple,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.white),
        titleTextStyle: TextStyle(color: Colors.white),
       textTheme: Theme.of(context).textTheme,
      ));

  static ThemeData darkTheme(BuildContext context) => ThemeData(
      brightness: Brightness.dark,
      fontFamily: 'BebasNeue',
      cardColor: Colors.black,
      canvasColor: ligthPurple,
      buttonColor: darkPurple,
      accentColor: Colors.white,
      appBarTheme: AppBarTheme(
        color: Colors.black,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.white),
        textTheme: Theme.of(context).textTheme.copyWith(
             headline6:
                 context.textTheme.headline6!.copyWith(color: Colors.white),
           ),
      ));

//   //Colors
//   static Color creamColor = Color(0xfff5f5f5);
//   static Color darkCreamColor = Vx.gray900;
//   static Color darkBluishColor = Color(0xff403b58);
//   static Color lightBluishColor = Vx.indigo500;


static Color ligthPurple = Color(0x4005f1);
static Color midPurple = Color(0x2d04a9);
static Color darkPurple = Vx.purple900;
// ligthPurple = "#4005f1";
// midPurple = "#2d04a9";
// darkPurple = "#130148";
}
