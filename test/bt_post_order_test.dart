import 'package:kata_machine/bt_post_order.dart';
import 'package:test/test.dart';

import 'fixtures/tree.dart';

void main() {
  test('post order', () {
    expect(postOrderSearch(tree), [7, 5, 15, 10, 29, 45, 30, 100, 50, 20]);
  });
}
