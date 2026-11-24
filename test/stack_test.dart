import 'package:kata_machine/stack.dart';
import 'package:test/test.dart';

void main() {
  test('stack', () {
    final stack = Stack<int>();

    stack.push(5);
    stack.push(7);
    stack.push(9);

    expect(stack.pop(), 9);
    expect(stack.length, 2);

    stack.push(11);
    expect(stack.pop(), 11);
    expect(stack.pop(), 7);
    expect(stack.peek(), 5);
    expect(stack.pop(), 5);
    expect(stack.pop(), isNull);

    stack.push(69);
    expect(stack.peek(), 69);
    expect(stack.length, 1);
  });
}
