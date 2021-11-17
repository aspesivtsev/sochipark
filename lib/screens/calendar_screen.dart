//import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
//import 'package:shared_preferences/shared_preferences.dart';

class EventsCalendar extends StatefulWidget {
  static const routeName = '/calendar';

  @override
  _EventsCalendarState createState() => _EventsCalendarState();
}

class _EventsCalendarState extends State<EventsCalendar> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Афиша'),
        backgroundColor: Colors.pink,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: TableCalendar(
                holidayPredicate: (day) {
                  // Every 20th day of the month will be treated as a holiday
                  //return day.day == 20;
                  return day.weekday == 7;
                },
                calendarStyle: CalendarStyle(
                  selectedDecoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.pink,
                    //borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: Colors.red,
                      width: 1,
                    ),
                  ),
                  //weekendDecoration: ,
                  selectedTextStyle: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  holidayDecoration: BoxDecoration(
                      //color: Colors.pink[50],
                      ),

                  todayTextStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20),
                  todayDecoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    //borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: Colors.green,
                      width: 2,
                    ),
                  ),
                  weekendDecoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    //borderRadius: BorderRadius.circular(5),
                    ///border: Border.all(
                    ///  color: Colors.red,
                    ///  width: 1,
                    ///),
                  ),
                  defaultDecoration: BoxDecoration(
                    shape: BoxShape.circle,
                    //color: Colors.lightBlue.shade100,
                    //borderRadius: BorderRadius.circular(5),
                    //border: Border.all(
                    //  color: Colors.deepPurple,
                    //  width: 1,
                    //),
                  ),
                ),
                locale: 'ru',
                startingDayOfWeek: StartingDayOfWeek.monday,
                availableCalendarFormats: const {
                  CalendarFormat.month: 'месяц',
                  CalendarFormat.twoWeeks: '2 недели',
                  CalendarFormat.week: 'неделя',
                },
                firstDay: DateTime.utc(2021, 01, 01),
                lastDay: DateTime.utc(2022, 2, 1),
                focusedDay: _focusedDay,
                calendarFormat: _calendarFormat,
                selectedDayPredicate: (day) {
                  // Use `selectedDayPredicate` to determine which day is currently selected.
                  // If this returns true, then `day` will be marked as selected.
                  // Using `isSameDay` is recommended to disregard
                  // the time-part of compared DateTime objects.
                  return isSameDay(_selectedDay, day);
                },
                onDaySelected: (selectedDay, focusedDay) {
                  if (!isSameDay(_selectedDay, selectedDay)) {
                    // Call `setState()` when updating the selected day
                    setState(() {
                      _selectedDay = selectedDay;
                      _focusedDay = focusedDay;
                    });
                  }
                },
                onFormatChanged: (format) {
                  if (_calendarFormat != format) {
                    // Call `setState()` when updating calendar format
                    setState(() {
                      _calendarFormat = format;
                    });
                  }
                },
                onPageChanged: (focusedDay) {
                  // No need to call `setState()` here
                  _focusedDay = focusedDay;
                },
              ),
            ),
            SizedBox(height: 10),

            ///каркас инфоблока
            Container(
              padding: EdgeInsets.only(left: 20),
              width: mq.width,
              //height: mq.height * 0.55,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                  border: Border.all(color: Colors.white, width: 6),
                  //color: Color(0xff30384c)),
                  color: Colors.pink),
              //содержимое инфоблока
              child: Stack(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 25),
                        child: Text(
                          'Сегодня',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            ///Icon(
                            ///CupertinoIcons.check_mark_circled_solid,
                            ///color: Colors.white,
                            ///),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                  border: Border.all(
                                      color: Colors.white, width: 1)),
                              width: 100,
                              height: 100,
                              //color: Colors.white60,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              width: mq.width * 0.65,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Event 1',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'location of the event',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          'The description of event 1 to be updated later on this item. The description of event 1 to be updated later on this item. The description of event 1 to be updated later on this item. ',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
