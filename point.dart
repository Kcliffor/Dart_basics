import 'dart:math';

class Point {
  double x;
  double y;
  double z;

  Point({
    double? x,
    double? y,
    double? z,
  })  : x = x ?? 0,
        y = y ?? 0,
        z = z ?? 0;

  factory Point.zeroCoordinate() => Point();
  factory Point.unitVector() => Point(x: 1, y: 1, z: 1);

  double distanceTo(Point another) {
    double result =
        sqrt(pow(this.x - another.x, 2) + pow(this.y - another.y, 2) + pow(this.z - another.z, 2));
    return result;
  }

  static double triangleSquare(Point first, Point second, Point third) {
    double distance_first = first.distanceTo(second);
    double distance_second = second.distanceTo(third);
    double distance_third = third.distanceTo(first);
    double half_perimeter = (distance_first + distance_second + distance_third) / 2;
    double square = sqrt(half_perimeter *
        (half_perimeter - distance_first) *
        (half_perimeter - distance_second) *
        (half_perimeter - distance_third));
    return square;
  }
}
