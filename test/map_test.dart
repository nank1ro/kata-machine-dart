import 'package:kata_machine/map.dart';
import 'package:test/test.dart';

void main() {
  test('map', () {
    final map = MyMap<String, int>();

    map.set('foo', 55);
    expect(map.size(), 1);
    map.set('fool', 75);
    expect(map.size(), 2);
    map.set('foolish', 105);
    expect(map.size(), 3);
    map.set('bar', 69);
    expect(map.size(), 4);

    expect(map.get('bar'), 69);
    expect(map.get('blaz'), isNull);

    map.delete('barblabr');
    expect(map.size(), 4);

    map.delete('bar');
    expect(map.size(), 3);
    expect(map.get('bar'), isNull);
  });
}
