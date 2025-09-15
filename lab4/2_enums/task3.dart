enum TrafficLight {
  red,
  yellow,
  green
}

String whatToDo(TrafficLight light) {
  switch (light) {
    case TrafficLight.red:
      return "Stop";
    case TrafficLight.yellow:
      return "Caution";
    case TrafficLight.green:
      return "Go";
  }
}

void main() {
  TrafficLight myTrafficLight = TrafficLight.red;
  print(myTrafficLight.name);
  print(whatToDo(myTrafficLight));

  myTrafficLight = TrafficLight.yellow;
  print(myTrafficLight.name);
  print(whatToDo(myTrafficLight));

  myTrafficLight = TrafficLight.green;
  print(myTrafficLight.name);
  print(whatToDo(myTrafficLight));
}
