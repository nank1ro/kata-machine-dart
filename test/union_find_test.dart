import 'package:kata_machine/union_find.dart';
import 'package:test/test.dart';

void main() {
  test('starts with each element in its own set', () {
    final sets = UnionFind(4);

    expect([for (var i = 0; i < 4; i++) sets.find(i)], [0, 1, 2, 3]);
  });

  test('merges sets without changing separate sets', () {
    final sets = UnionFind(5);

    sets.union(0, 1);
    sets.union(2, 3);

    expect(sets.find(0), sets.find(1));
    expect(sets.find(2), sets.find(3));
    expect(sets.find(0), isNot(sets.find(2)));

    sets.union(1, 3);

    final representative = sets.find(0);
    expect(representative, isIn([0, 1, 2, 3]));
    expect(sets.find(representative), representative);
    expect(
      [sets.find(1), sets.find(2), sets.find(3)],
      everyElement(representative),
    );
    expect(sets.find(4), 4);

    sets.union(0, 2);

    expect(sets.find(0), isIn([0, 1, 2, 3]));
    expect(
      [sets.find(1), sets.find(2), sets.find(3)],
      everyElement(sets.find(0)),
    );
    expect(sets.find(4), 4);
  });
}
