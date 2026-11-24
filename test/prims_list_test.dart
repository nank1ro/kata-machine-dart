import 'package:kata_machine/prims_list.dart';
import 'package:kata_machine/types.dart';
import 'package:test/test.dart';

import 'fixtures/graph.dart';

void main() {
  test('Prim\'s algorithm', () {
    final WeightedAdjacencyList expected = [
      [(to: 2, weight: 1), (to: 1, weight: 3)],
      [(to: 0, weight: 3), (to: 4, weight: 1)],
      [(to: 0, weight: 1)],
      [(to: 6, weight: 1)],
      [(to: 1, weight: 1), (to: 5, weight: 2)],
      [(to: 4, weight: 2), (to: 6, weight: 1)],
      [(to: 5, weight: 1), (to: 3, weight: 1)],
    ];

    expect(prims(list1), [
      for (final neighbors in expected) unorderedEquals(neighbors),
    ]);
  });
}
