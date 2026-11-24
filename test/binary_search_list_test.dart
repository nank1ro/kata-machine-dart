import 'package:kata_machine/binary_search_list.dart';
import 'package:test/test.dart';

void main() {
  test('binary search array', () {
    final values = [1, 3, 4, 69, 71, 81, 90, 99, 420, 1337, 69420];

    expect(binarySearch(values, 69), isTrue);
    expect(binarySearch(values, 1336), isFalse);
    expect(binarySearch(values, 69420), isTrue);
    expect(binarySearch(values, 69421), isFalse);
    expect(binarySearch(values, 1), isTrue);
    expect(binarySearch(values, 0), isFalse);
  });
}
