class Car {
  String make;
  String model;
  int year;

  Car(this.make, this.model, this.year);

  void displayInfo() {
    print('Car Information: $make $model $year');
  }
}


void main() {
  var myCar = Car('Toyota', 'Corolla', 2022);
  myCar.displayInfo();
}
