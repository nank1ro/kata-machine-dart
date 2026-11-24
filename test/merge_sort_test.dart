import 'package:kata_machine/merge_sort.dart';
import 'package:test/test.dart';

void main() {
  test('merge-sort', () {
    final values = [9, 3, 7, 4, 69, 420, 42];

    mergeSort(values);

    expect(values, [3, 4, 7, 9, 42, 69, 420]);
  });
}
