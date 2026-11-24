import 'package:kata_machine/types.dart';

final tree = BinaryNode<num>(
  20,
  left: BinaryNode(
    10,
    left: BinaryNode(5, right: BinaryNode(7)),
    right: BinaryNode(15),
  ),
  right: BinaryNode(
    50,
    left: BinaryNode(30, left: BinaryNode(29), right: BinaryNode(45)),
    right: BinaryNode(100),
  ),
);

final tree2 = BinaryNode<num>(
  20,
  left: BinaryNode(
    10,
    left: BinaryNode(5, right: BinaryNode(7)),
    right: BinaryNode(15),
  ),
  right: BinaryNode(
    50,
    left: BinaryNode(
      30,
      left: BinaryNode(29, left: BinaryNode(21)),
      right: BinaryNode(45, right: BinaryNode(49)),
    ),
  ),
);
