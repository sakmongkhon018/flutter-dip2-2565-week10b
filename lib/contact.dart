import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  List<String> names = ["Jackson","Mark","Bam","Chinawat"];
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Statefull Widget"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("My Name is ${names[i]}",style: TextStyle(fontSize: 20)),
            ElevatedButton(onPressed: (){
              setState(() {
                i++;
              });
            }, child: Text("Next")),
            SizedBox(height: 10),
            ElevatedButton(onPressed: (){
              setState(() {
                i--;
              });
            }, child: Text("Go Back"))
          ],
        ),
      ),
    );
  }
}