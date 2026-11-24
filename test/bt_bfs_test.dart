import 'package:kata_machine/bt_bfs.dart';
import 'package:test/test.dart';

import 'fixtures/tree.dart';

void main() {
  test('bt bfs', () {
    expect(bfs(tree, 45), isTrue);
    expect(bfs(tree, 7), isTrue);
    expect(bfs(tree, 69), isFalse);
  });
}
