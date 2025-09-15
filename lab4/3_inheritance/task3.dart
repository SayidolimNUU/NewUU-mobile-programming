class Shape {
  String color;

  Shape(this.color);

  void display() {
    print('Color: ${this.color}');
  }
}

class Circle extends Shape {
  double radius;

  Circle(String color, this.radius) : super(color) {
    if (radius < 0) {
      throw ArgumentError('Radius must be nonnegative!');
    }
  }

  @override
  void display() {
    super.display();
    print('Radius: ${this.radius}');
  }
}

class Square extends Shape {
  double sideLength;

  Square(String color, this.sideLength) : super(color) {
    if (sideLength < 0) {
      throw ArgumentError('Side length must be nonnegative!');
    }
  }

  @override
  void display() {
    super.display();
    print('Side length: ${this.sideLength}');
  }
}

void main() {
  var myCircle = Circle("blue", 1.5);
  myCircle.display();

  var mySquare = Square("red", 2.5);
  mySquare.display();
}
