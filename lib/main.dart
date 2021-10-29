import 'package:augmented_reality/about.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Augmented Reality",
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            "Augmented Reality",
            style: TextStyle(
              color: Colors.cyan[700],
            ),
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  "WELCOME",
                  style: TextStyle(
                      fontFamily: 'BebasNeue',
                      fontSize: 50.0,
                      color: Colors.cyan),
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(20.0),
                child: Image(
                  image: AssetImage('images/flutter.png'),
                ),
              ),
            ),
            Icon(CupertinoIcons.add),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(20.0),
                child: Image(
                  image: AssetImage('images/ARCore.png'),
                ),
              ),
            ),
            FloatingActionButton(
              backgroundColor: Colors.cyan[400],
              onPressed: () {
                Navigator.push(
                  context,
                  
                  MaterialPageRoute(builder: (context) => About()),
                );
              },
              child: Icon(CupertinoIcons.arrow_right),
            )
          ],
        ),
      ),
    );
  }
}
