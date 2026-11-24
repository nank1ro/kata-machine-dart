import 'package:kata_machine/types.dart';

final WeightedAdjacencyList list1 = [
  [(to: 1, weight: 3), (to: 2, weight: 1)],
  [(to: 0, weight: 3), (to: 2, weight: 4), (to: 4, weight: 1)],
  [(to: 1, weight: 4), (to: 3, weight: 7), (to: 0, weight: 1)],
  [(to: 2, weight: 7), (to: 4, weight: 5), (to: 6, weight: 1)],
  [(to: 1, weight: 1), (to: 3, weight: 5), (to: 5, weight: 2)],
  [(to: 6, weight: 1), (to: 4, weight: 2), (to: 2, weight: 18)],
  [(to: 3, weight: 1), (to: 5, weight: 1)],
];

final WeightedAdjacencyList list2 = [
  [(to: 1, weight: 3), (to: 2, weight: 1)],
  [(to: 4, weight: 1)],
  [(to: 3, weight: 7)],
  [],
  [(to: 1, weight: 1), (to: 3, weight: 5), (to: 5, weight: 2)],
  [(to: 2, weight: 18), (to: 6, weight: 1)],
  [(to: 3, weight: 1)],
];

final WeightedAdjacencyMatrix matrix2 = [
  [0, 3, 1, 0, 0, 0, 0],
  [0, 0, 0, 0, 1, 0, 0],
  [0, 0, 7, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0],
  [0, 1, 0, 5, 0, 2, 0],
  [0, 0, 18, 0, 0, 0, 1],
  [0, 0, 0, 1, 0, 0, 1],
];
