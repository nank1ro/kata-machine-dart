import 'package:kata_machine/dfs_on_bst.dart';
import 'package:test/test.dart';

import 'fixtures/tree.dart';

void main() {
  test('dfs on BST', () {
    expect(dfs(tree, 45), isTrue);
    expect(dfs(tree, 7), isTrue);
    expect(dfs(tree, 69), isFalse);
  });
}
