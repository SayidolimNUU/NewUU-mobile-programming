import 'dart:math';

abstract class Shape {
  double area();
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() => pi * radius * radius;
}

class Rectangle extends Shape {
  double width, height;

  Rectangle(this.width, this.height);

  @override
  double area() => width * height;
}

void main() {
  List<Shape> myShapes = [Circle(5.0), Rectangle(4.0, 6.0)];

  for (var shape in myShapes) {
    print('A ${shape.runtimeType} has an area of: ${shape.area().toStringAsFixed(2)}');
  }
}
