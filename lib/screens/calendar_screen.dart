import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
//import 'package:shared_preferences/shared_preferences.dart';

class EventsCalendar extends StatefulWidget {
  static const routeName = '/calendar';

  @override
  _EventsCalendarState createState() => _EventsCalendarState();
}

class _EventsCalendarState extends State<EventsCalendar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Афиша'),
      ),
      body: Container(
        child: TableCalendar(
          firstDay: DateTime.utc(2021, 01, 01),
          lastDay: DateTime.utc(2022, 2, 1),
          focusedDay: DateTime.now(),
        ),
      ),
    );
  }
}
