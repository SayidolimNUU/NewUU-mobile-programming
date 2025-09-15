abstract class Animal {
  void eat();
}

class Lion extends Animal {
  @override
  void eat() {
    print('Eating meat.');
  }
}

class Goat extends Animal {
  @override
  void eat() {
    print('Eating grass.');
  }
}

void feed(Animal animal) {
  animal.eat();
}

void main() {
  var myLion = Lion();
  feed(myLion);

  var myGoat = Goat();
  feed(myGoat);
}
