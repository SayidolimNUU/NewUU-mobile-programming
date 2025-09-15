enum DaysOfWeek {
  Monday,
  Tuesday,
  Wednesday,
  Thursday,
  Friday,
  Saturday,
  Sunday
}

void checkDay(DaysOfWeek day) {
  switch (day) {
    case DaysOfWeek.Saturday:
    case DaysOfWeek.Sunday:
      print("${day.name} is a weekend.");
      break;
    default:
      print("${day.name} is a weekday.");
  }
}

void main() {
  checkDay(DaysOfWeek.Monday);
  checkDay(DaysOfWeek.Tuesday);
  checkDay(DaysOfWeek.Wednesday);
  checkDay(DaysOfWeek.Thursday);
  checkDay(DaysOfWeek.Friday);
  checkDay(DaysOfWeek.Saturday);
  checkDay(DaysOfWeek.Sunday);
}
