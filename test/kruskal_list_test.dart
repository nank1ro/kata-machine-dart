import 'package:kata_machine/kruskal_list.dart';
import 'package:kata_machine/types.dart';
import 'package:test/test.dart';

void main() {
  test('builds a minimum spanning tree and skips edges that form cycles', () {
    final WeightedAdjacencyList graph = [
      [(to: 1, weight: 1), (to: 2, weight: 2)],
      [(to: 0, weight: 1), (to: 2, weight: 3), (to: 3, weight: 5)],
      [(to: 0, weight: 2), (to: 1, weight: 3), (to: 3, weight: 4)],
      [(to: 1, weight: 5), (to: 2, weight: 4)],
    ];

    expect(kruskal(graph), [
      unorderedEquals([(to: 1, weight: 1), (to: 2, weight: 2)]),
      unorderedEquals([(to: 0, weight: 1)]),
      unorderedEquals([(to: 0, weight: 2), (to: 3, weight: 4)]),
      unorderedEquals([(to: 2, weight: 4)]),
    ]);
  });

  test('returns null when no spanning tree exists', () {
    final WeightedAdjacencyList graph = [
      [(to: 1, weight: 1)],
      [(to: 0, weight: 1)],
      [],
    ];

    expect(kruskal(graph), isNull);
  });

  test('handles empty and single-vertex graphs', () {
    expect(kruskal([]), isEmpty);
    expect(kruskal([[]]), [isEmpty]);
  });
}
