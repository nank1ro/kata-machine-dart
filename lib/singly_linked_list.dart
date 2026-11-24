import 'types.dart';

class SinglyLinkedList<T> implements KataList<T> {
  @override
  int get length => throw UnimplementedError();

  @override
  void prepend(T item) => throw UnimplementedError();

  @override
  void insertAt(T item, int index) => throw UnimplementedError();

  @override
  void append(T item) => throw UnimplementedError();

  @override
  T? remove(T item) => throw UnimplementedError();

  @override
  T? get(int index) => throw UnimplementedError();

  @override
  T? removeAt(int index) => throw UnimplementedError();
}
