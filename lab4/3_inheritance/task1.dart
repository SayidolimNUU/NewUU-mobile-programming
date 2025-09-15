class Vehicle {
  String make;
  String model;

  Vehicle(this.make, this.model);

  void display() {
    print('Vehicle: $make, $model');
  }
}

class Car extends Vehicle {
  int numberOfDoors;

  Car(String make, String model, this.numberOfDoors) : super(make, model);

  @override
  void display() {
    super.display();
    print('Doors: $numberOfDoors');
  }
}

void main() {
  var myCar = Car('Honda', 'Civic', 4);
  myCar.display();
}
