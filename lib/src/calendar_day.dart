/// Calendar day.
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

  // ISO string value (date only).
  late final String isoString;

  // Weekday value.
  late final int weekday;

  // Day value.
  late final int day;

  /// Month value.
  late final int month;

  /// Year value.
  late final int year;

  /// Indicates if the day is today.
  late final bool isToday;

  /// Indicates if the day is before today.
  late final bool isPast;

  /// Indicates if the day is after today.
  late final bool isFuture;
}
