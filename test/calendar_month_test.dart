import 'package:calendar_view_utils/calendar_view_utils.dart';
import 'package:test/test.dart';

void main() {
  group('CalendarMonth', () {
    test('should return month', () {
      final date = DateTime(2022, 1, 1);
      final month = CalendarMonth(date);

      expect(month.year, 2022);
      expect(month.month, 1);
      expect(month.weeks.length, 6);
    });
  });
}
