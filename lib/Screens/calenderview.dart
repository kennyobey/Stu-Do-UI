// // // ignore_for_file: prefer_const_constructors

// // import 'package:flutter/material.dart';

// // import 'package:syncfusion_flutter_calendar/calendar.dart';
// // import 'package:table_calendar/table_calendar.dart';

// // class HomeCalendarPage extends StatefulWidget {
// //   const HomeCalendarPage({Key? key}) : super(key: key);

// //   @override
// //   _HomeCalendarPageState createState() => _HomeCalendarPageState();
// // }

// // class _HomeCalendarPageState extends State<HomeCalendarPage> {
// //   late CalendarController _controller;

// //   @override
// //   void initState() {
// //     super.initState();
// //     _controller = CalendarController();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Flutter Calendar Example'),
// //       ),
// //       body: SingleChildScrollView(
// //         child: Column(
// //           crossAxisAlignment: CrossAxisAlignment.start,
// //           children: <Widget>[
// //             TableCalendar(
// //               initialCalendarFormat: CalendarFormat.month,
// //               calendarStyle: CalendarStyle(
// //                   todayColor: Colors.blue,
// //                   selectedColor: Theme.of(context).primaryColor,
// //                   todayStyle: const TextStyle(
// //                       fontWeight: FontWeight.bold,
// //                       fontSize: 22.0,
// //                       color: Colors.white)),
// //               headerStyle: HeaderStyle(
// //                 centerHeaderTitle: true,
// //                 formatButtonDecoration: BoxDecoration(
// //                   color: Colors.brown,
// //                   borderRadius: BorderRadius.circular(22.0),
// //                 ),
// //                 formatButtonTextStyle: const TextStyle(color: Colors.white),
// //                 formatButtonShowsNext: false,
// //               ),
// //               startingDayOfWeek: StartingDayOfWeek.monday,
// //               onDaySelected: (date, events) {
// //                 print(date.toUtc());
// //               },
// //               builders: CalendarBuilders(
// //                 selectedDayBuilder: (context, date, events) => Container(
// //                     margin: const EdgeInsets.all(5.0),
// //                     alignment: Alignment.center,
// //                     decoration: BoxDecoration(
// //                         color: Theme.of(context).primaryColor,
// //                         borderRadius: BorderRadius.circular(8.0)),
// //                     child: Text(
// //                       date.day.toString(),
// //                       style: TextStyle(color: Colors.white),
// //                     )),
// //                 todayDayBuilder: (context, date, events) => Container(
// //                     margin: const EdgeInsets.all(5.0),
// //                     alignment: Alignment.center,
// //                     decoration: BoxDecoration(
// //                         color: Colors.blue,
// //                         borderRadius: BorderRadius.circular(8.0)),
// //                     child: Text(
// //                       date.day.toString(),
// //                       style: TextStyle(color: Colors.white),
// //                     )),
// //               ),
// //               calendarController: _controller,
// //               firstDay: null,
// //               focusedDay: null,
// //               lastDay: null,
// //             )
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// // ignore_for_file: avoid_web_libraries_in_flutter

// import 'package:flutter/material.dart';
// import 'package:table_calendar/table_calendar.dart';

// import '../utils.dart';

// class TableRangeExample extends StatefulWidget {
//   const TableRangeExample({Key? key}) : super(key: key);

//   @override
//   _TableRangeExampleState createState() => _TableRangeExampleState();
// }

// class _TableRangeExampleState extends State<TableRangeExample> {
//   CalendarFormat _calendarFormat = CalendarFormat.month;
//   RangeSelectionMode _rangeSelectionMode = RangeSelectionMode
//       .toggledOn; // Can be toggled on/off by longpressing a date
//   DateTime _focusedDay = DateTime.now();
//   DateTime? _selectedDay;
//   DateTime? _rangeStart;
//   DateTime? _rangeEnd;

//   get kLastDay => null;

//   get kFirstDay => null;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('TableCalendar - Range'),
//       ),
//       body: TableCalendar(
//         firstDay: kFirstDay,
//         lastDay: kLastDay,
//         focusedDay: _focusedDay,
//         selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
//         rangeStartDay: _rangeStart,
//         rangeEndDay: _rangeEnd,
//         calendarFormat: _calendarFormat,
//         rangeSelectionMode: _rangeSelectionMode,
//         onDaySelected: (selectedDay, focusedDay) {
//           if (!isSameDay(_selectedDay, selectedDay)) {
//             setState(() {
//               _selectedDay = selectedDay;
//               _focusedDay = focusedDay;
//               _rangeStart = null; // Important to clean those
//               _rangeEnd = null;
//               _rangeSelectionMode = RangeSelectionMode.toggledOff;
//             });
//           }
//         },
//         onRangeSelected: (start, end, focusedDay) {
//           setState(() {
//             _selectedDay = null;
//             _focusedDay = focusedDay;
//             _rangeStart = start;
//             _rangeEnd = end;
//             _rangeSelectionMode = RangeSelectionMode.toggledOn;
//           });
//         },
//         onFormatChanged: (format) {
//           if (_calendarFormat != format) {
//             setState(() {
//               _calendarFormat = format;
//             });
//           }
//         },
//         onPageChanged: (focusedDay) {
//           _focusedDay = focusedDay;
//         },
//       ),
//     );
//   }
// }
