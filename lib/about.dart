import 'package:augmented_reality/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MaterialApp(
    home: About(),
  ));
}

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text(
          "Information",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(20.0),
              child: Card(
                clipBehavior: Clip.antiAlias,
                elevation: 10,
                shadowColor: Colors.black,
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Center(
                        child: Text(
                          "Working Of ARCore + Flutter",
                          style: TextStyle(
                              fontFamily: 'BebasNeue',
                              fontSize: 30.0,
                              color: Colors.cyan),
                        ),
                      ),
                      Container(
                         margin: EdgeInsets.only(top: 30.0),
                        child: Text(
                          "Flutter",
                          style: TextStyle(
                              fontFamily: 'BebasNeue',
                              fontSize: 22.0,
                              color: Colors.cyan[500]),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30.0),
                        child: Text("Flutter SDK is Google's UI toolkit for crafting beautiful, natively compiled applications for mobile,web, and desktop from a single codebase.",
                          style: TextStyle(
                              fontFamily: 'BebasNeue',
                              fontSize: 18.0,
                              color: Colors.cyan[900]),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30.0),
                        child: Text(
                          "ARCore",
                          style: TextStyle(
                              fontFamily: 'BebasNeue',
                              fontSize: 22.0,
                              color: Colors.cyan[500]),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30.0),
                        child: Text(
                          "ARCore is a platform that enables Android app developers to quickly and easily build AR experiences into their apps and games. It can use your Android device's camera, processors, and motion sensors in order to serve up immersive interactions.",
                          style: TextStyle(
                              fontFamily: 'BebasNeue',
                              fontSize: 18.0,
                              color: Colors.cyan[900]),
                        ),
                        
                      ),
                      Container(
                        child: Text("BY Integrating Arcore with Flutter Augumented Reality is goig to Be Performend. MOdels of Products or Objects are used to show the AR of the Real Objects",
                          style: TextStyle(
                              fontFamily: 'BebasNeue',
                              fontSize: 20.0,
                              color: Colors.cyan[300]),
                        ),
                      ),
                       FloatingActionButton(
                        backgroundColor: Colors.cyan[400],
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Model()),
                          );
                        },
                        child: Icon(CupertinoIcons.arrow_right),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
