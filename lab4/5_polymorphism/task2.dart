abstract class Weapon {
  void action();
}

class Sword extends Weapon {
  @override
  void action() {
    print('Swinging!');
  }
}

class Bow extends Weapon {
  @override
  void action() {
    print('Firing!');
  }
}

void main() {
  var mySword = Sword();
  mySword.action();

  var myBow = Bow();
  myBow.action();
}
