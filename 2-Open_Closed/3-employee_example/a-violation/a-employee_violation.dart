class Employee {
  String id;
  String name;
  double salary;

  //TODO want to add employee type


  Employee({
    required this.id,
    required this.name,
    required this.salary,

  });

  double calcHoursBonus(double hours) {
    return ((salary / 30) / 8) * hours;
  }

  @override
  String toString() {
    return 'Employee id : $id , name : $name';
  }
}

//Client Code
void main(List<String> args) {
  Employee emp1 = Employee(id: "123", name: 'mina', salary: 1232);

  print("$emp1 Bonus : ${emp1.calcHoursBonus(5)}");
}
