import 'package:kata_machine/two_crystal_balls.dart';
import 'package:test/test.dart';

void main() {
  test('two crystal balls', () {
    const size = 10000;

    for (final floor in [0, 99, 100, 5455, size - 1]) {
      final breaks = List<bool>.generate(size, (i) => i >= floor);
      expect(twoCrystalBalls(breaks), floor, reason: 'First break at $floor');
    }

    expect(twoCrystalBalls(List<bool>.filled(821, false)), -1);
  });
}
