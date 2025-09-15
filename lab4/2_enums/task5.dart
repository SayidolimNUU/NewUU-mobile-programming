import 'task3.dart';

int durationInSeconds (TrafficLight myTrafficLight) {
  if (myTrafficLight.name == 'red') {
    return 30;
  }
  else if (myTrafficLight.name == 'yellow') {
    return 5;
  }
  else return 45;
}


void main() {
  TrafficLight myTrafficLight = TrafficLight.red;
  print(myTrafficLight.name);
  print(durationInSeconds(myTrafficLight));

  myTrafficLight = TrafficLight.yellow;
  print(myTrafficLight.name);
  print(durationInSeconds(myTrafficLight));

  myTrafficLight = TrafficLight.green;
  print(myTrafficLight.name);
  print(durationInSeconds(myTrafficLight));
}
