import 'package:kata_machine/insertion_sort.dart';
import 'package:test/test.dart';

void main() {
  test('insertion-sort', () {
    final values = [9, 3, 7, 4, 69, 420, 42];

    insertionSort(values);

    expect(values, [3, 4, 7, 9, 42, 69, 420]);
  });
}
