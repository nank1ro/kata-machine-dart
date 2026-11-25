import 'package:kata_machine/heap_sort.dart';
import 'package:test/test.dart';

void main() {
  test('sorts values in place', () {
    final values = [9, -3, 7, 4.5, 7, 0];

    heapSort(values);

    expect(values, [-3, 0, 4.5, 7, 7, 9]);
  });

  test('handles empty and singleton lists', () {
    final empty = <num>[];
    final singleton = [5];

    heapSort(empty);
    heapSort(singleton);

    expect(empty, isEmpty);
    expect(singleton, [5]);
  });
}
