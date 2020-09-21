import 'dart:math' as math;

class Point {
  final num x, y;

  Point(this.x, this.y);
  Point.origin()
      : x = 0,
        y = 0;

  num distanceTo(Point other) {
    var dx = x - other.x;
    var dy = y - other.y;
    return math.sqrt(dx * dx + dy * dy);
  }

  num get magnitude => math.sqrt(x * x + y * y);

  Point operator +(Point other) => Point(x + other.x, y + other.y);
}

void main() {
  // Instantiate point objects.
  var p1 = Point(10, 10);
  print(p1.magnitude);
  var p2 = Point.origin();
  var distance = p1.distanceTo(p2);
  print(distance);
}