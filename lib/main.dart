import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movie/pages/CategoryPage.dart';
import 'package:movie/pages/Homepage.dart';
import 'package:movie/pages/MoviePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    //hides status bar and nav bar
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(scaffoldBackgroundColor: Color(0xFF0F111D)),
        routes: {
          "/": (context) => HomePage(),
          "categoryPage": (context) => CategoryPage(),
          "moviePage": (context) => MoviePage(),
        });
  }
}
