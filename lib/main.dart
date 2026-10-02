import 'package:flutter/material.dart';

import 'database/app_database.dart';
import 'pages/home.dart';
import 'services/cantique_service.dart';
import 'theme/app_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppDatabase.instance.initialize();
  await CantiqueService.instance.loadCacheFromDatabase();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cantiques du Message',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const Home(),
    );
  }
}
