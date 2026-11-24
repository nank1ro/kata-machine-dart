import 'package:kata_machine/min_heap.dart';
import 'package:test/test.dart';

void main() {
  test('min heap', () {
    final heap = MinHeap();

    expect(heap.length, 0);

    heap.insert(5);
    heap.insert(3);
    heap.insert(69);
    heap.insert(420);
    heap.insert(4);
    heap.insert(1);
    heap.insert(8);
    heap.insert(7);

    expect(heap.length, 8);
    expect(heap.delete(), 1);
    expect(heap.delete(), 3);
    expect(heap.delete(), 4);
    expect(heap.delete(), 5);
    expect(heap.length, 4);
    expect(heap.delete(), 7);
    expect(heap.delete(), 8);
    expect(heap.delete(), 69);
    expect(heap.delete(), 420);
    expect(heap.length, 0);
  });
}
