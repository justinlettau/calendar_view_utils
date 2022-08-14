import 'calendar_day.dart';
import 'utils.dart';

class CalendarWeek {
  CalendarWeek(DateTime date, {int weekStartsOn = DateTime.monday}) {
    _weekStartsOn = weekStartsOn;
    days = _getDays(date);
  }

  late final List<CalendarDay> days;
  late final int _weekStartsOn;

  List<CalendarDay> _getDays(DateTime target) {
    List<CalendarDay> days = [];
    DateTime date = startOfWeek(target, weekStartsOn: _weekStartsOn);

    for (var i = 0; i < 7; i++) {
      final day = CalendarDay(date);
      days.add(day);
      date = date.add(const Duration(days: 1));
    }

    return days;
  }
}
