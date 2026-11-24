# Kata Machine in Dart

Practice data structures and algorithms with 29 Dart katas, including sorting, search, trees, graphs, and caches. Each exercise has a starter file in `lib/` and a matching test in `test/`.

## Get started

Install the Dart 3 SDK, then clone this repository and run your first test.

```sh
git clone https://github.com/nank1ro/kata-machine-dart.git
cd kata-machine-dart
dart pub get
dart test test/bubble_sort_test.dart
```

The test starts with an `UnimplementedError`. Fill in [`lib/bubble_sort.dart`](lib/bubble_sort.dart) and rerun the test. To try another kata, pick a test in `test/` and edit the matching file in `lib/`.

Pass several test paths to `dart test` to run a subset, or run `dart test` to check every exercise. Run `dart analyze` to check for static errors.

## Credits

The tests and fixtures are adapted from [ThePrimeagen’s kata-machine](https://github.com/ThePrimeagen/kata-machine/tree/d9d8d06b8a1a2c9058168eb8ae059aec80d4e24c). The project is distributed under the [MIT License](LICENSE).
