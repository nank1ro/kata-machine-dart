import 'package:kata_machine/bellman_ford.dart';
import 'package:kata_machine/types.dart';
import 'package:test/test.dart';

void main() {
  const WeightedAdjacencyList graphWithNegativeCycle = [
    [(to: 1, weight: 2)],
    [],
    [(to: 3, weight: -2)],
    [(to: 2, weight: 1)],
    [(to: 2, weight: 1)],
  ];

  test('finds shortest distances with a reachable zero-weight cycle', () {
    final WeightedAdjacencyList graph = [
      [(to: 4, weight: 2)],
      [(to: 0, weight: 2)],
      [(to: 1, weight: -5)],
      [(to: 0, weight: 3), (to: 1, weight: 2), (to: 2, weight: 4)],
      [(to: 3, weight: -3)],
    ];

    expect(bellmanFord(3, graph), [1, -1, 4, 0, 3]);
  });

  test('returns null for a reachable negative-weight cycle', () {
    expect(bellmanFord(2, graphWithNegativeCycle), isNull);
    expect(bellmanFord(4, graphWithNegativeCycle), isNull);
  });

  test('ignores a negative-weight cycle unreachable from the source', () {
    expect(bellmanFord(0, graphWithNegativeCycle), [
      0,
      2,
      double.infinity,
      double.infinity,
      double.infinity,
    ]);
  });
}
