import 'package:kata_machine/bfs_graph_matrix.dart';
import 'package:test/test.dart';

import 'fixtures/graph.dart';

void main() {
  test('bfs - graph matrix', () {
    expect(bfs(matrix2, 0, 6), [0, 1, 4, 5, 6]);
    expect(bfs(matrix2, 6, 0), isNull);
  });
}
