import 'package:flutter/material.dart';
import 'DefaultYoutube.dart';
import 'YoutubeFullScreen.dart';
import 'YoutubeHDScreen.dart';
import 'YoutubeLive.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Youtube Player',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          elevation: 0,
          padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
          color: Colors.blue,
          textColor: Colors.white,
          child: Text('Hello Flutter Youtube',
            style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                textBaseline: TextBaseline.alphabetic
            ),),
          onPressed: () {
            print("Pressed on a RaisedButton");
          },
        ),
      ),
    );
  }
}



class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter UI"),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const SizedBox(height: 30),
            MaterialButton(
              padding: EdgeInsets.all(12.0),
              minWidth: double.infinity,
              child: Text("Flutter Default Youtube"),
              color: Colors.lightGreen,
              textColor: Colors.white,
              splashColor: Colors.grey,
              //padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),

              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return DefaultYoutube();
                }));
              },
            ),
            const SizedBox(height: 30),
            MaterialButton(
              padding: EdgeInsets.all(12.0),
              minWidth: double.infinity,
              child: Text("Flutter Youtube Player HD"),
              color: Colors.lightGreen,
              textColor: Colors.white,
              splashColor: Colors.grey,
              //padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),

              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return YoutubeHDScreen();
                }));
              },
            ),


            const SizedBox(height: 30),
            MaterialButton(
              padding: EdgeInsets.all(12.0),
              minWidth: double.infinity,
              child: Text("Youtube With Multiple Videos"),
              color: Colors.lightGreen,
              textColor: Colors.white,
              splashColor: Colors.grey,
              // padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),

              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return MyHomePage();
                }));
              },
            ),


            const SizedBox(height: 30),
            MaterialButton(
              padding: EdgeInsets.all(12.0),
              minWidth: double.infinity,
              child: Text("Youtube Live"),
              color: Colors.lightGreen,
              textColor: Colors.white,
              splashColor: Colors.grey,
              // padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),

              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return YoutuebLiveScreen();
                }));
              },
            ),

          ],
        ),
      ),
    );
  }

}
