extension IndexedIterable<E> on Iterable<E> {
  Iterable<T> mapIndexed<T>(T f(int i, E e)) {
    var index = 0;
    return map((e) => f(index++, e));
  }
}
