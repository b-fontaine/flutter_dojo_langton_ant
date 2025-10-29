class Ant {
  final int x;
  final int y;
  final AntOrientation orientation;

  const Ant({
    required this.x,
    required this.y,
    this.orientation = AntOrientation.north,
  });
}

enum AntOrientation { north, east, south, west }
