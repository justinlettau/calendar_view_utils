import 'package:calendar_view_utils/src/utils.dart';
import 'package:test/test.dart';

void main() {
  group('startOfWeek', () {
    test('should return first day of week', () {
      final date = DateTime(2022, 8, 3);
      final result = startOfWeek(date);

      expect(result.year, 2022);
      expect(result.month, 8);
      expect(result.day, 1);
    });
  });

  group('endOfWeek', () {
    test('should return last day of week', () {
      final date = DateTime(2022, 8, 3);
      final result = endOfWeek(date);

      expect(result.year, 2022);
      expect(result.month, 8);
      expect(result.day, 7);
    });
  });

  group('startOfMonth', () {
    test('should return first day of month', () {
      final date = DateTime(2022, 8, 3);
      final result = startOfMonth(date);

      expect(result.year, 2022);
      expect(result.month, 8);
      expect(result.day, 1);
    });
  });

  group('endOfMonth', () {
    test('should return last day of month', () {
      final date = DateTime(2022, 8, 3);
      final result = endOfMonth(date);

      expect(result.year, 2022);
      expect(result.month, 8);
      expect(result.day, 31);
    });
  });
}
