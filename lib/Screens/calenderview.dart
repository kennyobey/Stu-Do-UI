

import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:table_calendar/table_calendar.dart';



class Calenderpage extends StatelessWidget {
  
  final CalendarController _controller = CalendarController();

   Calenderpage({Key? key}) : super(key: key);
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child:Column(children: [ TableCalendar(
      calendarController: _controller,
    )],)
      ,) );
  }
}
