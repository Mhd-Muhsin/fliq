import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class CacheManager {

  final storage = FlutterSecureStorage();

  Future saveToken(String? token) async {
    await storage.write(key: 'token', value: token);
  }

  Future<String?> getToken() async {
    return await storage.read(key: 'token');
  }

  Future saveLoggedUserId(String? receiverId) async { //receiverId
    await storage.write(key: 'LoggedUserId', value: receiverId);
  }

  Future<String?> getLoggedUserId() async {
    return await storage.read(key: 'LoggedUserId');
  }

  // Future<void> removeToken() async {
  //   final box = GetStorage();
  //   await box.remove(CacheManagerKey.TOKEN.toString());
  // }
}