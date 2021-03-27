import 'package:flutter/material.dart';
import './widgets/main_drawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sochi Park',
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          accentColor: Colors.lightGreen,
          canvasColor: Color.fromRGBO(255, 255, 255, 1),
          scaffoldBackgroundColor: Colors.white,
          fontFamily: 'Tavolga',
          textTheme: ThemeData.light().textTheme.copyWith(
              bodyText2: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyText1: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              headline6: const TextStyle(
                fontSize: 26,
                fontFamily: 'Tavolga',
                fontWeight: FontWeight.bold,
              ))),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Column(
          children: [
            Text(
              'Сочи Парк',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.normal),
              /*title: Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset('assets/images/sochipark_logo_small.png',
                  fit: BoxFit.cover),*/
            ),
            /*Text(
              'волшебство начинается',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
              /*title: Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset('assets/images/sochipark_logo_small.png',
                  fit: BoxFit.cover),*/
            ),*/
          ],
        ),
      ),
      drawer: MainDrawer(),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text(
                'Center',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
