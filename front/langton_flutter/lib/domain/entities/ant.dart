class Ant {
  final AntOrientation orientation;

  const Ant({this.orientation = AntOrientation.north});
}

enum AntOrientation { north, east, south, west }
