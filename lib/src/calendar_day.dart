class CalendarDay {
  CalendarDay(DateTime date) {
    final now = DateTime.now();

    date = date;
    isoString = date.toIso8601String().split('T')[0];
    weekday = date.weekday;
    day = date.day;
    month = date.month;
    year = date.year;
    isToday =
        date.year == now.year && date.month == now.month && date.day == now.day;
    isPast = !isToday && date.isBefore(now);
    isFuture = !isToday && date.isAfter(now);
  }

  late final DateTime date;
  late final String isoString;
  late final int weekday;
  late final int day;
  late final int month;
  late final int year;
  late final bool isToday;
  late final bool isPast;
  late final bool isFuture;
}
