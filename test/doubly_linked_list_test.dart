import 'package:kata_machine/doubly_linked_list.dart';
import 'package:test/test.dart';

import 'fixtures/list_checks.dart';

void main() {
  test('doubly linked list', () {
    checkList(DoublyLinkedList<int>());
  });
}
