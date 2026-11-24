import 'package:kata_machine/singly_linked_list.dart';
import 'package:test/test.dart';

import 'fixtures/list_checks.dart';

void main() {
  test('linked-list', () {
    checkList(SinglyLinkedList<int>());
  });
}
