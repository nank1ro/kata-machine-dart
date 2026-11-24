import 'package:kata_machine/types.dart';
import 'package:test/test.dart';

void checkList(KataList<int> list) {
  list.append(5);
  list.append(7);
  list.append(9);

  expect(list.get(2), 9);
  expect(list.removeAt(1), 7);
  expect(list.length, 2);

  list.append(11);
  expect(list.removeAt(1), 9);
  expect(list.remove(9), isNull);
  expect(list.removeAt(0), 5);
  expect(list.removeAt(0), 11);
  expect(list.length, 0);

  list.prepend(5);
  list.prepend(7);
  list.prepend(9);

  expect(list.get(2), 5);
  expect(list.get(0), 9);
  expect(list.remove(9), 9);
  expect(list.length, 2);
  expect(list.get(0), 7);
}
