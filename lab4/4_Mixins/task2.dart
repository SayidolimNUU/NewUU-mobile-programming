mixin Flyer {
  void fly() {
    print('Taking off!');
  }
}

class Bird with Flyer {
  String species;

  Bird(this.species);
}

class Plane with Flyer {
  String model;

  Plane(this.model);
}

void main() {
  var myBird = Bird('Chicken');
  myBird.fly();

  var myPlane = Plane('Airbus A320');
  myPlane.fly();
}
