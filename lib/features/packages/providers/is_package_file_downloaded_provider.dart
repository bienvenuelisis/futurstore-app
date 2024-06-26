import 'dart:io';

import 'package:futurstore/features/packages/functions/utils.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'is_package_file_downloaded_provider.g.dart';

typedef IsPackageFileDownloadedFunc = Future<bool> Function(
  String packageName,
);

final isPackageFileDownloadedFuncProvider =
    Provider<IsPackageFileDownloadedFunc>(
  (ref) => isPackageFileDownloadedFunc,
);

Future<bool> isPackageFileDownloadedFunc(
  String packageName,
) async {
  return File(await getFilePathFromPackageName(packageName)).existsSync();
}

@riverpod
Future<bool> isPackageFileDownloaded(
  IsPackageFileDownloadedRef ref,
  String packageName,
) {
  return ref.read(isPackageFileDownloadedFuncProvider)(packageName);
}
