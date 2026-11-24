import 'package:kata_machine/bt_pre_order.dart';
import 'package:test/test.dart';

import 'fixtures/tree.dart';

void main() {
  test('pre order', () {
    expect(preOrderSearch(tree), [20, 10, 5, 7, 15, 50, 30, 29, 45, 100]);
  });
}
