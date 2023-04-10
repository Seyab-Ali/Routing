import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  static const String id = 'third_screen';

  const ThirdScreen({Key? key}) : super(key: key);

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Third Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 50,
                width: double.infinity,
                color: Colors.grey,
                child: const Center(child: Text('Screen Two')),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
