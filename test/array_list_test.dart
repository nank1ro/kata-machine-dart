import 'package:kata_machine/array_list.dart';
import 'package:test/test.dart';

import 'fixtures/list_checks.dart';

void main() {
  test('array-list', () {
    checkList(ArrayList<int>(3));
  });
}
