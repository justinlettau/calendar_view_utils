import 'package:calendar_view_utils/calendar_view_utils.dart';
import 'package:test/test.dart';

void main() {
  group('CalendarDay', () {
    test('should return day for past date', () {
      final date = DateTime(2020, 7, 1);
      final day = CalendarDay(date);

      expect(day.isoString, '2020-07-01');
      expect(day.day, 1);
      expect(day.weekday, DateTime.wednesday);
      expect(day.month, 7);
      expect(day.year, 2020);
      expect(day.isFuture, false);
      expect(day.isPast, true);
      expect(day.isToday, false);
    });

    test('should return day for today', () {
      final date = DateTime.now();
      final day = CalendarDay(date);

      expect(day.day, date.day);
      expect(day.weekday, date.weekday);
      expect(day.month, date.month);
      expect(day.year, date.year);
      expect(day.isFuture, false);
      expect(day.isPast, false);
      expect(day.isToday, true);
    });

    test('should return day for future date', () {
      final date = DateTime(2131, 7, 1);
      final day = CalendarDay(date);

      expect(day.isoString, '2131-07-01');
      expect(day.day, 1);
      expect(day.weekday, DateTime.sunday);
      expect(day.month, 7);
      expect(day.year, 2131);
      expect(day.isFuture, true);
      expect(day.isPast, false);
      expect(day.isToday, false);
    });
  });
}
