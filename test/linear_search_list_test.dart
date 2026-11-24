import 'package:kata_machine/linear_search_list.dart';
import 'package:test/test.dart';

void main() {
  test('linear search array', () {
    final values = [1, 3, 4, 69, 71, 81, 90, 99, 420, 1337, 69420];

    expect(linearSearch(values, 69), isTrue);
    expect(linearSearch(values, 1336), isFalse);
    expect(linearSearch(values, 69420), isTrue);
    expect(linearSearch(values, 69421), isFalse);
    expect(linearSearch(values, 1), isTrue);
    expect(linearSearch(values, 0), isFalse);
  });
}
