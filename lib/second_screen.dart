import 'package:flutter/material.dart';
import 'package:routing/third_screen.dart';

class SecondScreen extends StatefulWidget {
  static const String id = 'second_screen';

  // final String name;
  //final int cnic;
  final dynamic data;

   SecondScreen({
    Key? key,
   required this.data,
  }) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    // final args = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            //args['name']
            'Second Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text('Node: '),
              Text(widget.data['Node']

              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text('Flutter: '),
              Text(widget.data['Flutter']),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text('CNIC: '),
              Text(widget.data['cnic'].toString()),
            ],
          ),

          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ThirdScreen()));
            },
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 50,
                width: double.infinity,
                color: Colors.grey,
                child: const Center(child: Text('Screen Three')),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
