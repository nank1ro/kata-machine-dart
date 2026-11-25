import 'package:kata_machine/binary_search_tree.dart';
import 'package:kata_machine/types.dart';
import 'package:test/test.dart';

void main() {
  test('inserts into an empty tree', () {
    _expectBstValues(bstInsert(null, 5), [5]);
  });

  test('inserts smaller and larger values', () {
    final root = bstInsert(BinaryNode<num>(5), 2);
    final updated = bstInsert(bstInsert(root, 8), 3);

    _expectBstValues(updated, [2, 3, 5, 8]);
  });

  test('ignores duplicate values', () {
    final root = BinaryNode<num>(5, left: BinaryNode(2));

    _expectBstValues(bstInsert(root, 2), [2, 5]);
  });

  test('deletes a leaf', () {
    final root = BinaryNode<num>(5, left: BinaryNode(2), right: BinaryNode(8));

    _expectBstValues(bstDelete(root, 8), [2, 5]);
  });

  test('deletes a node with one child', () {
    final root = BinaryNode<num>(
      5,
      left: BinaryNode(2, right: BinaryNode(3)),
    );
    final rootWithOneChild = BinaryNode<num>(5, left: BinaryNode(3));

    _expectBstValues(bstDelete(root, 2), [3, 5]);
    _expectBstValues(bstDelete(rootWithOneChild, 5), [3]);
  });

  test('deletes a root with two children', () {
    final root = BinaryNode<num>(
      5,
      left: BinaryNode(2, right: BinaryNode(4, left: BinaryNode(3))),
      right: BinaryNode(8, left: BinaryNode(6, right: BinaryNode(7))),
    );

    _expectBstValues(bstDelete(root, 5), [2, 3, 4, 6, 7, 8]);
  });

  test('deletes the last node', () {
    expect(bstDelete(BinaryNode<num>(5), 5), isNull);
  });

  test('ignores missing values', () {
    final root = BinaryNode<num>(5, left: BinaryNode(2));

    _expectBstValues(bstDelete(root, 3), [2, 5]);
    expect(bstDelete(null, 3), isNull);
  });
}

void _expectBstValues(BinaryNode<num>? node, List<num> sortedValues) {
  if (sortedValues.isEmpty) {
    expect(node, isNull);
    return;
  }

  expect(node, isNotNull, reason: 'Expected a node for $sortedValues');
  final rootIndex = sortedValues.indexOf(node!.value);
  expect(
    rootIndex,
    greaterThanOrEqualTo(0),
    reason: '${node.value} must be in $sortedValues',
  );
  _expectBstValues(node.left, sortedValues.sublist(0, rootIndex));
  _expectBstValues(node.right, sortedValues.sublist(rootIndex + 1));
}
