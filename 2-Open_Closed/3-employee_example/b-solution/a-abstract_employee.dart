abstract class Employee {
  String id;
  String name;
  double salary;

  Employee({
    required this.id,
    required this.name,
    required this.salary,
  });

  double calcHoursBonus(double hours);

  @override
  String toString() {
    return 'Employee id : $id , name : $name';
  }
}

class Manager extends Employee {
  Manager({
    required super.id,
    required super.name,
    required super.salary,
  });

  @override
  double calcHoursBonus(double hours) {
    double equation = ((salary / 30) / 8) * hours;
    return equation * 2;
  }
}

class RegularEmp extends Employee {
  RegularEmp({
    required super.id,
    required super.name,
    required super.salary,
  });

  double calcHoursBonus(double hours) {
    double equation = ((salary / 30) / 8) * hours;
    return equation;
  }
}

void main(List<String> args) {
  Employee emp1 = Manager(id: '123', name: 'mina', salary: 4522);
  Employee emp2 = RegularEmp(id: '123', name: 'gergess', salary: 4522);

  print("$emp1 Bonus : ${emp1.calcHoursBonus(5)}");
  print("$emp2 Bonus : ${emp2.calcHoursBonus(5)}");
}
