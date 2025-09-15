mixin Performer {
  void perform(){
    print('Pam-param-param!');
  }
}

mixin Musician {
  void playInstrument(){
    print('Tu-turu-turu!');
  }
}

class Artist {
  String name;

  Artist(this.name);
}

class Dancer extends Artist with Performer {
  Dancer(String name) : super(name);
}

class Guitarist extends Artist with Performer, Musician {
  Guitarist(String name) : super(name);
}

void main() {
  var myDancer = Dancer('Mickael Jackson');
  myDancer.perform();

  var myGuitarist = Guitarist('Prince');
  myGuitarist.playInstrument();
  myGuitarist.perform();
}
