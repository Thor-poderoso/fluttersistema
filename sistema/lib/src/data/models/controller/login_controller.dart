import 'package:sistema/src/data/database_helper.dart';

class LoginController {
  final DatabaseHelper _databaseHelper = DatabaseHelper();

  Future<bool> login(String username, String password) async {
    // Consulta o banco de dados para verificar se as credenciais são válidas
    bool isValidCredentials = await _databaseHelper.checkCredentials(username, password);

    return isValidCredentials;
  }
}
