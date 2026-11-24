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

## Available katas

### Search and sorting

- [Linear search](lib/linear_search_list.dart)
- [Binary search](lib/binary_search_list.dart)
- [Two Crystal Balls](lib/two_crystal_balls.dart)
- [Bubble sort](lib/bubble_sort.dart)
- [Insertion sort](lib/insertion_sort.dart)
- [Merge sort](lib/merge_sort.dart)
- [Quicksort](lib/quick_sort.dart)

### Collections

- [Array list](lib/array_list.dart)
- [Singly linked list](lib/singly_linked_list.dart)
- [Doubly linked list](lib/doubly_linked_list.dart)
- [Queue](lib/queue.dart)
- [Stack](lib/stack.dart)
- [Ring buffer](lib/ring_buffer.dart)
- [Min heap](lib/min_heap.dart)
- [Map](lib/map.dart)
- [LRU cache](lib/lru.dart)
- [Trie](lib/trie.dart)

### Binary trees

- [Preorder traversal](lib/bt_pre_order.dart)
- [Inorder traversal](lib/bt_in_order.dart)
- [Postorder traversal](lib/bt_post_order.dart)
- [Breadth-first search](lib/bt_bfs.dart)
- [Depth-first search on a binary search tree](lib/dfs_on_bst.dart)
- [Compare binary trees](lib/compare_binary_trees.dart)

### Graphs and paths

- [Breadth-first search (adjacency list)](lib/bfs_graph_list.dart)
- [Breadth-first search (adjacency matrix)](lib/bfs_graph_matrix.dart)
- [Depth-first search (adjacency list)](lib/dfs_graph_list.dart)
- [Dijkstra’s shortest path](lib/dijkstra_list.dart)
- [Prim’s minimum spanning tree](lib/prims_list.dart)
- [Maze solver](lib/maze_solver.dart)

## Credits

The tests and fixtures are adapted from [ThePrimeagen’s kata-machine](https://github.com/ThePrimeagen/kata-machine/tree/d9d8d06b8a1a2c9058168eb8ae059aec80d4e24c). The project is distributed under the [MIT License](LICENSE).
