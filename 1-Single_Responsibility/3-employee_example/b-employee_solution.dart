class Employee {
  String email;
  Employee({
    required this.email,
  });
}


class EmployeeService {
  List<Employee> Employees = [];

  void EmployeeRegistration(Employee employee) {
    Employees.add(employee);

    EmailService.send(employee.email, "Registration", "Congratulation !");
  }
}


class EmailService {
  static void send(String email, String subject, String message) {
    dynamic emailMessage;

    emailMessage.From.Add('username');
    emailMessage.To.Add('receiver');
    emailMessage.Subject = subject;

    emailMessage.Body = 'email body';
  }
}

