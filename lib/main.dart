import 'package:flutter/material.dart';
import 'package:news_c6_online/modules/home/home_screen.dart';
import 'package:news_c6_online/shared/styles/my_theme.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routeName :(context)=>HomeScreen(),
      } ,
      initialRoute: HomeScreen.routeName,
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.DarkTheme,

    );
  }
}
