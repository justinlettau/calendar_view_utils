import 'package:calendar_view_utils/calendar_view_utils.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: CalendarPage(),
  ));
}

class CalendarPage extends StatefulWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  final _date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    final month = CalendarMonth(_date, weekStartsOn: DateTime.sunday);
    final headers = ['S', 'M', 'T', 'W', 'T', 'F', 'S'];

    return Table(
      border: TableBorder.symmetric(inside: BorderSide()),
      children: [
        TableRow(
          children: [
            for (var item in headers) ...{
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.middle,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text(item)],
                ),
              ),
            },
          ],
        ),
        for (var week in month.weeks) ...{
          TableRow(
            children: [
              for (var day in week.days) ...{
                TableCell(
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(4.0),
                        margin: const EdgeInsets.only(top: 2.0),
                        decoration: day.isToday
                            ? BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blue,
                              )
                            : null,
                        child: Text(day.day.toString()),
                      )
                    ],
                  ),
                ),
              },
            ],
          )
        }
      ],
    );
  }
}
