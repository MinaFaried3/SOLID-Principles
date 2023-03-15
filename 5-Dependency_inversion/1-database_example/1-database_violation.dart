class MySQLConnection {
  /**
    * db connection
    */
  void connect() {
    print('MYSQL Connection');
  }
}

class PasswordReminder {
  late MySQLConnection dbConnection;

  PasswordReminder(MySQLConnection dbConnection) {
    this.dbConnection = dbConnection;
  }
}

