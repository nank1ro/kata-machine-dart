import 'package:kata_machine/ring_buffer.dart';
import 'package:test/test.dart';

void main() {
  test('ring buffer', () {
    final buffer = RingBuffer<int>();

    buffer.push(5);
    expect(buffer.pop(), 5);
    expect(buffer.pop(), isNull);

    buffer.push(42);
    buffer.push(9);
    expect(buffer.pop(), 42);
    expect(buffer.pop(), 9);
    expect(buffer.pop(), isNull);

    buffer.push(42);
    buffer.push(9);
    buffer.push(12);
    expect(buffer.get(2), 12);
    expect(buffer.get(1), 9);
    expect(buffer.get(0), 42);
  });
}
