import 'package:kata_machine/maze_solver.dart';
import 'package:test/test.dart';

void main() {
  test('maze solver', () {
    final maze = [
      'xxxxxxxxxx x',
      'x        x x',
      'x        x x',
      'x xxxxxxxx x',
      'x          x',
      'x xxxxxxxxxx',
    ];
    final expectedPath = [
      (x: 10, y: 0),
      (x: 10, y: 1),
      (x: 10, y: 2),
      (x: 10, y: 3),
      (x: 10, y: 4),
      (x: 9, y: 4),
      (x: 8, y: 4),
      (x: 7, y: 4),
      (x: 6, y: 4),
      (x: 5, y: 4),
      (x: 4, y: 4),
      (x: 3, y: 4),
      (x: 2, y: 4),
      (x: 1, y: 4),
      (x: 1, y: 5),
    ];

    final path = solve(maze, 'x', (x: 10, y: 0), (x: 1, y: 5));

    expect(path, expectedPath);
  });
}
