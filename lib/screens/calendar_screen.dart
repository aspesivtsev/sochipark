//import 'dart:html';

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
    return Scaffold(
      appBar: AppBar(
        title: Text('Афиша'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: TableCalendar(
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
              selectedTextStyle: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              holidayDecoration: BoxDecoration(
                color: Colors.blueGrey,
              ),
              todayTextStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20),
              todayDecoration: BoxDecoration(
                color: Colors.lightGreen.shade400,
                //borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: Colors.green,
                  width: 1,
                ),
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
      ),
    );
  }
}
