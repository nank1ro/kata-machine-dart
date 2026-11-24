import 'package:kata_machine/dfs_graph_list.dart';
import 'package:test/test.dart';

import 'fixtures/graph.dart';

void main() {
  test('dfs - graph', () {
    expect(dfs(list2, 0, 6), [0, 1, 4, 5, 6]);
    expect(dfs(list2, 6, 0), isNull);
  });
}
