class Age {
  final int from;
  final int to;

  Age({required this.from, required this.to});

  @override
  bool operator ==(Object other) {
    return (other is Age) && other.from == from && other.to == to;
  }

  @override
  int get hashCode => from.hashCode ^ to.hashCode;
}
