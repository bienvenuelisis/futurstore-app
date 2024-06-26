import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:installed_apps/installed_apps.dart';

import '../data/models/index.dart';

typedef GetPackageInstalledInfoFunc = Future<PackageInstalledInfo?> Function(
  String packageName,
);

final getPackageInstalledInfoFuncProvider =
    Provider<GetPackageInstalledInfoFunc>(
  (ref) => getPackageInstalledInfoFunc,
);

Future<PackageInstalledInfo?> getPackageInstalledInfoFunc(
  String packageName,
) async {
  final appInfo = await InstalledApps.getAppInfo(packageName);
  return PackageInstalledInfo(
    installedAt: DateTime.fromMicrosecondsSinceEpoch(
      appInfo.installedTimestamp,
    ),
    name: appInfo.name,
    packageName: appInfo.packageName,
    versionCode: appInfo.versionCode,
    versionName: appInfo.versionName,
  );
}
