import 'package:flutter_test/flutter_test.dart';

import 'change_counter.dart';

void main() {
  late ChangeCounter counter;
  setUp(
    () {
      counter = ChangeCounter();
    },
  );

  group(
    'Testing ChangeCounter',
    () {
      group(
        "Testing counter init value",
        () {
          test(
            'testing ChangeCounter counter init value',
            () {
              expect(counter.counter, equals(0));
            },
          );
        },
      );
      group(
        'Testing increment and decrement',
        () {
          test(
            'testing ChangeCounter increment',
            () {
              counter.increment();
              expect(counter.counter, equals(1));
            },
          );
          test(
            'testing ChangeCounter decrement',
            () {
              counter.decrement();
              expect(counter.counter, equals(-1));
            },
          );
        },
      );
    },
  );
}
