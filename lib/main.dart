import 'package:flutter/material.dart';
import 'package:routing/second_screen.dart';
import 'package:routing/third_screen.dart';
import 'package:routing/utils/routes.dart';
import 'package:routing/utils/routes_names.dart';

import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: RouteName.homeScreen,
      onGenerateRoute: Routes.generateRoute,
      // initialRoute: HomeScreen.id,
      // routes: {
      //   HomeScreen.id : (context) => HomeScreen(),
      //   SecondScreen.id : (context) => SecondScreen(),
      //   ThirdScreen.id : (context) => ThirdScreen()
      // },
    );
  }
}
