[![Pub](https://img.shields.io/pub/v/calendar_view_utils.svg)](https://pub.dartlang.org/packages/calendar_view_utils)
[![CI](https://github.com/justinlettau/calendar_view_utils/workflows/CI/badge.svg)](https://github.com/justinlettau/calendar_view_utils/actions)

# Calendar View Utilities

Core classes/utilities useful for building custom calendar views.

## Usage

```dart
import 'package:calendar_view_utils/calendar_view_utils.dart';

final date = DateTime.now();
final view = CalendarMonth(date);

print('Month: ${view.month} ${view.year}');

for (var week in month.weeks) {
  for (var day in week.days) {
    // every day within the visible calendar month
    print('Day: ${day.day}');

    print('Today: ${day.isToday}');
    print('Past: ${day.isPast}');
    print('Future: ${day.isFuture}');
  }
}
```
