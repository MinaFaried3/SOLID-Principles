abstract class ConnectionInterface {
  void connect();
}

class DbConnection implements ConnectionInterface {
  /**
    * db connection
    */
  void connect() {
    print('MYSQL Connection');
  }
}

class PasswordReminder {
  /**
    * @var DBConnection
    */
  late ConnectionInterface dbConnection;

  PasswordReminder(ConnectionInterface dbConnection) {
    this.dbConnection = dbConnection;
  }
}
