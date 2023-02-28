class Employee {
  String id;
  String name;
  double salary;

  //TODO want to add employee type
  String employeeType;

  Employee(
      {required this.id,
      required this.name,
      required this.salary,
      required this.employeeType});

  double calcHoursBonus(double hours) {
    //!change here
    double equation = ((salary / 30) / 8) * hours;
    if (employeeType == 'manager')
     return equation * 2;
    else
      return equation;
  }

  @override
  String toString() {
    return 'Employee id : $id , name : $name';
  }
}

//Client Code
void main(List<String> args) {
  //!change here and add employee type
  Employee emp1 =
      Employee(id: "123", name: 'mina', salary: 1232, employeeType: 'manager');

  print("$emp1 Bonus : ${emp1.calcHoursBonus(5)}");
}
