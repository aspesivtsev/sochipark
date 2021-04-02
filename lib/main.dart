import 'package:flutter/material.dart';
//import './widgets/main_drawer.dart';
import './screens/attractions_screen.dart';

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
          accentColor: Colors.yellow,
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
      //home: MyHomePage(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => AttractionsScreen(),
        AttractionsScreen.routName: (ctx) => AttractionsScreen(),
      },
      onUnknownRoute: (settings) {
        //if all the routes fail it will show the main screen
        return MaterialPageRoute(builder: (ctx) => AttractionsScreen());
      },
    );
  }
}
