typedef Point = ({int x, int y});
typedef GraphEdge = ({int to, num weight});
typedef WeightedAdjacencyList = List<List<GraphEdge>>;
typedef WeightedAdjacencyMatrix = List<List<num>>;

class BinaryNode<T> {
  BinaryNode(this.value, {this.left, this.right});

  T value;
  BinaryNode<T>? left;
  BinaryNode<T>? right;
}

abstract interface class KataList<T> {
  int get length;
  void prepend(T item);
  void insertAt(T item, int index);
  void append(T item);
  T? remove(T item);
  T? get(int index);
  T? removeAt(int index);
}
