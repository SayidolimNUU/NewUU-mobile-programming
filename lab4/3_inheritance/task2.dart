abstract class Animal {
  void makeSound();
}

class Dog extends Animal {
  @override
  void makeSound() {
    print('Woof!');
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print('Meow!');
  }
}

void main() {
  var myDog = Dog();
  myDog.makeSound();

  var myCat = Cat();
  myCat.makeSound();
}
