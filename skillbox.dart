import 'point.dart';

void main() {
  Point point1 = Point(x: -1, y: 2, z: -3);
  Point point2 = Point(x: -1, y: 2, z: 8);
  Point point3 = Point(x: 3, y: 2, z: 8);
  print(Point.triangleSquare(point1, point2, point3));
}
