void main() {
  MySQLConnection mySQLConnection = MySQLConnection();
  OracleConnection oracleConnection = OracleConnection();

  PasswordReminder passwordReminder = PasswordReminder(mySQLConnection);
}

abstract class DBConnectionInterface {
  void connect();
}

class MySQLConnection implements DBConnectionInterface {
  void connect() {
    // ...
  }
}

class FirebaseConnection implements DBConnectionInterface {
  @override
  void connect() {}
}

class OracleConnection implements DBConnectionInterface {
  void connect() {
    // ...
  }
}

class PasswordReminder {
  DBConnectionInterface dbConnection;
  PasswordReminder(this.dbConnection);
}
