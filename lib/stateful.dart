import 'package:flutter/material.dart';

class StateFullPage extends StatefulWidget {
  const StateFullPage({Key? key}) : super(key: key);

  @override
  State<StateFullPage> createState() => _StateFullPageState();
}

class _StateFullPageState extends State<StateFullPage> {
  String name = "Mark Zackerberg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Basic'),
      ),
      body: Column(
        children: [
          TextField(
            onChanged: (value) {
              setState(() {
                name = value;
              });
              print("Setsate is called:$name");
            },
          ),
          Text("Hello,$name"),
        ],
      ),
    );
  }
}
