abstract class IAppManager {
  Future<bool> isFirst();
  Future<bool> isFirstTime({required bool isFirst});

  Future<void> saveBool({required String key, required bool value});

  bool getBool({required String key, bool defValue = false});

  Future<String?> getDeviceIpAddress();
}
