class Employee {
  String name;
  double baseSalary;

  Employee(this.name, this.baseSalary);

  double calculateSalary(){
    return baseSalary;
  }
}

class Manager extends Employee {
  double bonus;

  Manager(String name, double baseSalary, this.bonus) : super(name, baseSalary);

  @override
  double calculateSalary() {
    return super.calculateSalary() + bonus;
  }
}

void main() {
  var myEmployee = Employee('Alisher', 1500);
  print(myEmployee.calculateSalary());

  var myManager = Manager('Bobosher', 1700, 200);
  print(myManager.calculateSalary());
}
