import 'calendar_week.dart';
import 'utils.dart';

class CalendarMonth {
  CalendarMonth(DateTime date, {int weekStartsOn = DateTime.monday}) {
    _weekStartsOn = weekStartsOn;
    month = date.month;
    year = date.year;
    weeks = _getWeeks(date);
  }

  late final int month;
  late final int year;
  late final List<CalendarWeek> weeks;
  late final int _weekStartsOn;

  List<CalendarWeek> _getWeeks(DateTime target) {
    List<CalendarWeek> weeks = [];
    final start =
        startOfWeek(startOfMonth(target), weekStartsOn: _weekStartsOn);
    final end = endOfWeek(endOfMonth(target), weekStartsOn: _weekStartsOn);

    final diff = end.difference(start);
    int numberOfWeeks = (diff.inDays / DateTime.daysPerWeek).ceil();

    DateTime date = start;

    while (numberOfWeeks-- > 0) {
      final week = CalendarWeek(date, weekStartsOn: _weekStartsOn);
      weeks.add(week);
      date = date.add(const Duration(days: DateTime.daysPerWeek));
    }

    return weeks;
  }
}
