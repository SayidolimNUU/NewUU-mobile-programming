mixin Swimmer {
  void swim() {
    print('Moving through the water...');
  }
}

class Human with Swimmer {
  String name;

  Human(this.name);
}

class Fish with Swimmer {
  String species;

  Fish(this.species);
}

void main() {
  var myHuman = Human('Alice');
  myHuman.swim();

  var myFish = Fish('Tuna');
  myFish.swim();
}
