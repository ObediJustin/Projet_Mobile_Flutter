import 'dart:io';

import 'package:sqflite_common_ffi/sqflite_ffi.dart';

bool get shouldUseMemoryDatabase => false;

void configureDatabaseFactory() {
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    sqfliteFfiInit();
    databaseFactory = databaseFactoryFfi;
  }
}
