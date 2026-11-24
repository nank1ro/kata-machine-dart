import 'types.dart';

class ArrayList<T> implements KataList<T> {
  ArrayList(int capacity);

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
