import 'package:kata_machine/dijkstra_list.dart';
import 'package:test/test.dart';

import 'fixtures/graph.dart';

void main() {
  test('dijkstra via adj list', () {
    expect(dijkstraList(0, 6, list1), [0, 1, 4, 5, 6]);
  });
}
