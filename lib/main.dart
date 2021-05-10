import 'package:flutter/material.dart';
//import './widgets/main_drawer.dart';
import './screens/attractions_screen.dart';
import './screens/attraction_detail_screen.dart';
import './screens/contacts_screen.dart';
import './screens/calendar_screen.dart';
import './screens/terminal_screen.dart';

import 'package:intl/date_symbol_data_local.dart';

void main() {
  initializeDateFormatting().then((_) => runApp(MyApp()));
  //runApp(MyApp());
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
                  fontSize: 16,
                ),
                bodyText1: TextStyle(
                  color: Color.fromRGBO(20, 51, 51, 1),
                ),
                headline6: const TextStyle(
                  fontSize: 26,
                  fontFamily: 'Tavolga',
                  fontWeight: FontWeight.bold,
                ),
                headline3: const TextStyle(
                  //color: Colors.deepPurple,
                  color: Color(0xFF342C81),
                  fontSize: 26,
                  fontFamily: 'Tavolga',
                  fontWeight: FontWeight.bold,
                ),
              )),
      //home: MyHomePage(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => AttractionsScreen(),
        AttractionsScreen.routeName: (ctx) => AttractionsScreen(),
        AttractionDetailScreen.routeName: (ctx) => AttractionDetailScreen(),
        ContactsScreen.routeName: (ctx) => ContactsScreen(),
        EventsCalendar.routeName: (ctx) => EventsCalendar(),
        TerminalScreen.routeName: (ctx) => TerminalScreen(),
      },
      onUnknownRoute: (settings) {
        //if all the routes fail it will show the main screen
        return MaterialPageRoute(builder: (ctx) => AttractionsScreen());
      },
    );
  }
}
