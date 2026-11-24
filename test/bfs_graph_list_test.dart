import 'package:kata_machine/bfs_graph_list.dart';
import 'package:test/test.dart';

import 'fixtures/graph.dart';

void main() {
  test('bfs - graph', () {
    expect(bfs(list2, 0, 6), [0, 1, 4, 5, 6]);
    expect(bfs(list2, 6, 0), isNull);
  });
}
