// ignore: avoid_web_libraries_in_flutter
//import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:sky_mint/models/events.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  late Map<DateTime, List<Event>> selectedEvents;

  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();
  CalendarFormat calendarFormat = CalendarFormat.month;
  final TextEditingController _eventNameController = TextEditingController();

  @override
  void initState() {
    selectedEvents = {};
    super.initState();
  }

  @override
  void dispose() {
    _eventNameController.dispose();
    super.dispose();
  }

  List<Event> _getEventsFromDay(DateTime day) {
    return selectedEvents[day] ?? [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TableCalendar(
        firstDay: DateTime(1970),
        lastDay: DateTime(2070),
        calendarFormat: calendarFormat,
        focusedDay: focusedDay,
        onFormatChanged: (CalendarFormat _calendarFormat) {
          setState(() {
            calendarFormat = _calendarFormat;
          });
        },
        startingDayOfWeek: StartingDayOfWeek.monday,
        daysOfWeekVisible: true,
        onDaySelected: (DateTime _selectedDay, DateTime _focusedDay) {
          setState(() {
            selectedDay = _selectedDay;
            focusedDay = _focusedDay;
          });
        },
        selectedDayPredicate: (DateTime date) {
          return isSameDay(selectedDay, date);
        },
        eventLoader: _getEventsFromDay,
        calendarStyle: CalendarStyle(
            todayDecoration: BoxDecoration(color: Colors.redAccent)),
        headerStyle: HeaderStyle(
          formatButtonVisible: true,
        ),
      ),
    );
  }
}
