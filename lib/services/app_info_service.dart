import 'package:package_info_plus/package_info_plus.dart';

class AppInfoService {
  AppInfoService._();
  static final AppInfoService instance = AppInfoService._();

  PackageInfo? _cachedInfo;

  Future<PackageInfo> getPackageInfo() async {
    if (_cachedInfo != null) return _cachedInfo!;
    try {
      _cachedInfo = await PackageInfo.fromPlatform();
      return _cachedInfo!;
    } catch (_) {
      return PackageInfo(
        appName: 'Cantiques du Message',
        packageName: 'com.objusdev.boanerges',
        version: '1.0.5',
        buildNumber: '6',
      );
    }
  }

  Future<String> getDisplayVersion({bool withBuild = false}) async {
    final info = await getPackageInfo();
    if (withBuild && info.buildNumber.isNotEmpty) {
      return '${info.version} (Build ${info.buildNumber})';
    }
    return info.version;
  }
}
