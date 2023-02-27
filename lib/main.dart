import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:kanban_innoscripta/views/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const KanbanApp());
}

class KanbanApp extends StatelessWidget {
  const KanbanApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Kanban Board',
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          primaryColor: Colors.deepPurple,
          primarySwatch: Colors.deepPurple,
          brightness: Brightness.light,
          useMaterial3: true),
      darkTheme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          brightness: Brightness.dark,
          primaryColor: Colors.deepPurple,
          primarySwatch: Colors.deepPurple,
          useMaterial3: true),
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.fadeIn,
      enableLog: false,
      home: const SplashScreen(),
    );
  }
}
