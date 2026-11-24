import 'package:kata_machine/queue.dart';
import 'package:test/test.dart';

void main() {
  test('queue', () {
    final queue = Queue<int>();

    queue.enqueue(5);
    queue.enqueue(7);
    queue.enqueue(9);

    expect(queue.deque(), 5);
    expect(queue.length, 2);

    queue.enqueue(11);
    expect(queue.deque(), 7);
    expect(queue.deque(), 9);
    expect(queue.peek(), 11);
    expect(queue.deque(), 11);
    expect(queue.deque(), isNull);
    expect(queue.length, 0);

    queue.enqueue(69);
    expect(queue.peek(), 69);
    expect(queue.length, 1);
  });
}
