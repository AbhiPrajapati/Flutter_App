import 'package:augmented_reality/screens/home.dart';
import 'package:augmented_reality/screens/init.dart';
import 'package:augmented_reality/screens/login.dart';
import 'package:augmented_reality/screens/register.dart';
import 'package:augmented_reality/utils/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'res/themes.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  const Main({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title: "Augmented Reality",
    home: LoginPage(),
     themeMode: ThemeMode.system,
  //   theme: MyTheme.lightTheme(context),
  //  darkTheme: MyTheme.darkTheme(context),
    // themeMode: ThemeMode.dark,
    // darkTheme: ThemeData(brightness: Brightness.dark),
     initialRoute: MyRoutes.startRoute,
     debugShowCheckedModeBanner: false,
    routes: {
     // "/": (context) => LoginPage(),
      MyRoutes.homeRoute: (context) => HomePage(),
      MyRoutes.loginRoute: (context) => LoginPage(),
      MyRoutes.startRoute : (context) => MyApp(), 
      MyRoutes.registerRoute : (context)=> Register(),
      // MyRoutes.cartRoute: (context) => CartPage(),
    },
  );

  }
}