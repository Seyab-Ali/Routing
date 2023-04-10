import 'package:flutter/material.dart';
import 'package:routing/second_screen.dart';
import 'package:routing/utils/routes_names.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';

  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, RouteName.secondScreen,
                  arguments: {"Node": "js module", "Flutter": "Good For Apps", "cnic" : 1540130039341});
            },
            child: Container(
              height: 50,
              width: double.infinity,
              color: Colors.grey,
              child: const Center(child: Text('Screen Two')),
            ),
          ),
        ),
      ),
    );
  }
}
