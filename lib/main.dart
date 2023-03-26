import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'ui/bottom_nav_bar.dart';
import 'ui/home_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.white,
    statusBarIconBrightness: Brightness.dark,
    statusBarBrightness: Brightness.light,
    systemNavigationBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: Colors.white,
    systemNavigationBarContrastEnforced: true,
    systemNavigationBarDividerColor: Colors.white,
    systemStatusBarContrastEnforced: true,
  ));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),

          titleSpacing: .8,
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            // textStyle: const TextStyle(color: Colors.blue),
            // backgroundColor: Colors.teal,
            // primary: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
            // minimumSize: const Size(400, 60),
          ),
        ),

        useMaterial3: true,
      ),
      home: const BottomNavBar(),
    );
  }
}
