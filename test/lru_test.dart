import 'package:kata_machine/lru.dart';
import 'package:test/test.dart';

void main() {
  test('LRU', () {
    final lru = LRU<String, int>(3);

    expect(lru.get('foo'), isNull);
    lru.update('foo', 69);
    expect(lru.get('foo'), 69);

    lru.update('bar', 420);
    expect(lru.get('bar'), 420);

    lru.update('baz', 1337);
    expect(lru.get('baz'), 1337);

    lru.update('ball', 69420);
    expect(lru.get('ball'), 69420);
    expect(lru.get('foo'), isNull);
    expect(lru.get('bar'), 420);

    lru.update('foo', 69);
    expect(lru.get('bar'), 420);
    expect(lru.get('foo'), 69);
    expect(lru.get('baz'), isNull);
  });
}
