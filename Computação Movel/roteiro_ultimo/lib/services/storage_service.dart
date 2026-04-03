import 'package:shared_preferences/shared_preferences.dart';

class StorageService {
  static const String key = 'tasks';
  static const String keyPage = 'pages';
  static const String keyEmail = 'email';
  static const String keyPassword = 'password';
  static const String keyCarrinho = 'carrinho';
  static const String keyPrecos = 'precos';

  Future<void> saveTasks(List<String> tasks) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(key, tasks);
  }

  Future<List<String>> loadTasks() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getStringList(key) ?? [];
  }

  Future<void> savePage(String page) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(keyPage, page);
  }

  Future<String> loadPage() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(keyPage) ?? "";
  }

  Future<void> saveEmail(String email) async{
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(keyEmail, email);
  }

  Future<String> loadEmail() async{
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(keyEmail) ?? "";
  }

  Future<void> savePassword(String password) async{
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(keyPassword, password);
  }

  Future<String> loadPassword() async{
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(keyPassword) ?? "";
  }

  Future<void> saveCarrinho(List<String> carrinho) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(keyCarrinho, carrinho);
  }

  Future<List<String>> loadCarrinho() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getStringList(keyCarrinho) ?? [];
  }

  Future<void> savePrecos(List<String> precos) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(keyPrecos, precos);
  }

  Future<List<String>> loadPrecos() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getStringList(keyPrecos) ?? [];
  }
}
