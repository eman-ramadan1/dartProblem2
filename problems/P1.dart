import 'package:dartproblems/dartproblems.dart' as dartproblems;
 
import 'dart:io';

class Circle {
  double radius;
  Circle(this.radius);
}

class Rectangle {
  double width;
  double height;
  Rectangle(this.width, this.height);
}

String calculateArea(dynamic shape) {

  // Calculate based on type
  return shape is Circle
      ? "Area of Circle: ${3.14 * shape.radius * shape.radius}"
      : shape is Rectangle
          ? "Area of Rectangle: ${shape.width * shape.height}"
          : "Unknown shape";
}

void main() {
  print(calculateArea(Circle(3)));         // Area of Circle: 28.26
  print(calculateArea(Rectangle(4, 5)));   // Area of Rectangle: 20
  print(calculateArea("Triangle"));        // Unknown shape
}
