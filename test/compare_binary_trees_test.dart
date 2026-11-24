import 'package:kata_machine/compare_binary_trees.dart';
import 'package:test/test.dart';

import 'fixtures/tree.dart';

void main() {
  test('compare binary trees', () {
    expect(compare(tree, tree), isTrue);
    expect(compare(tree, tree2), isFalse);
  });
}
