import 'package:calendar_view_utils/calendar_view_utils.dart';
import 'package:test/test.dart';

void main() {
  group('CalendarWeek', () {
    test('should return week', () {
      final date = DateTime(2022, 0, 1);
      final week = CalendarWeek(date);

      expect(week.days.length, 7);
    });
  });
}
