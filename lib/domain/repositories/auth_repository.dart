import '../entities/user.dart';

abstract class AuthRepository {
  Future<User?> loginUser(String email, String password);
  Future<User?> registerUser(String email, String password);
}
