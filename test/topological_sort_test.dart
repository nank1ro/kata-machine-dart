import 'package:kata_machine/topological_sort.dart';
import 'package:kata_machine/types.dart';
import 'package:test/test.dart';

void main() {
  test('places every predecessor before its successors', () {
    const WeightedAdjacencyList graph = [
      [(to: 3, weight: 1)],
      [(to: 0, weight: 0)],
      [(to: 0, weight: 1), (to: 4, weight: 1)],
      [],
      [(to: 3, weight: 1)],
      [],
    ];

    final input = [
      for (final edges in graph) [...edges]
    ];
    final order = topologicalSort(input);
    expect(order, unorderedEquals([0, 1, 2, 3, 4, 5]));
    for (var from = 0; from < graph.length; from++) {
      for (final edge in graph[from]) {
        expect(order!.indexOf(from), lessThan(order.indexOf(edge.to)));
      }
    }
  });

  test('returns null for a cycle in a disconnected component', () {
    final WeightedAdjacencyList graph = [
      [(to: 1, weight: 1)],
      [],
      [(to: 3, weight: 1)],
      [(to: 2, weight: 1)],
    ];

    expect(topologicalSort(graph), isNull);
  });

  test('returns an empty order for an empty graph', () {
    expect(topologicalSort([]), isEmpty);
  });
}
