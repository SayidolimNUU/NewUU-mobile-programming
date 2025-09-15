class Rectangle {
  double width;
  double height;

  Rectangle(this.width, this.height);

  double area() {
    return width * height;
  }

  double perimeter() {
    return (width + height) * 2;
  }
}

void main() {
  var myRectangle = Rectangle(9, 15);
  print('Area: ${myRectangle.area()}');
  print('Perimeter: ${myRectangle.perimeter()}');
}
