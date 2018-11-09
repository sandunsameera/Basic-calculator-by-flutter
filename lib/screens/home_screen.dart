import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();

  String output = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator with Flutter"),
      ),
      body: Padding(

        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          
          children: <Widget>[
            TextField(
              controller: _controller1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "lable1"),
            ),
            TextField(
              controller: _controller2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "lable2"),
            ),
            IconButton(
              icon:Icon(Icons.add),
              onPressed: () {
                setState(() {
                  output = (int.parse(_controller1.text) + int.parse(_controller2.text)).toString();
                });
              },
            ),
            Text(output, textAlign: TextAlign.right,)
          ],
        ),
      ),
    );
  }
}
