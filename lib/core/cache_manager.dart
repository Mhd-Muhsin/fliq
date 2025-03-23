import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class CacheManager {

  final storage = FlutterSecureStorage();

  Future saveToken(String? token) async {
    await storage.write(key: 'token', value: token);
  }

  Future<String?> getToken() async {
    return await storage.read(key: 'token');
  }

  Future saveReceiverId(String? receiverId) async {
    await storage.write(key: 'receiverId', value: receiverId);
  }

  Future<String?> getReceiverId() async {
    return await storage.read(key: 'receiverId');
  }

  // Future<void> removeToken() async {
  //   final box = GetStorage();
  //   await box.remove(CacheManagerKey.TOKEN.toString());
  // }
}