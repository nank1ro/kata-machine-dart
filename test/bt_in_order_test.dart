import 'package:kata_machine/bt_in_order.dart';
import 'package:test/test.dart';

import 'fixtures/tree.dart';

void main() {
  test('in order', () {
    expect(inOrderSearch(tree), [5, 7, 10, 15, 20, 29, 30, 45, 50, 100]);
  });
}
