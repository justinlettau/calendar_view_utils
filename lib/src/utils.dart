DateTime startOfWeek(DateTime date, {int weekStartsOn = DateTime.monday}) {
  final weekdayIndex = date.weekday - 1;
  final firstDayIndex = (weekStartsOn - 1) % 7;
  final firstDayOffset = (weekdayIndex - firstDayIndex) % 7;

  return date.subtract(Duration(days: firstDayOffset));
}

DateTime endOfWeek(DateTime date, {int weekStartsOn = DateTime.monday}) {
  final start = startOfWeek(date, weekStartsOn: weekStartsOn);
  return start.add(const Duration(days: DateTime.daysPerWeek - 1));
}

DateTime startOfMonth(DateTime date) {
  return DateTime.utc(date.year, date.month, 1);
}

DateTime endOfMonth(DateTime date) {
  return DateTime.utc(date.year, date.month + 1, 0);
}
