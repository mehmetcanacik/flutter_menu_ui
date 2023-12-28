import 'package:flutter/material.dart';
import 'package:menu_dashboard_app/views/menu_dashboard.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ListenableProvider(
          create: (context) => PageController(),
        ),
      ],
      child: MaterialApp(
        title: 'Dashboard v1.0',
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.dark,
        darkTheme: ThemeData.dark(),
        home: const MenuDashBoardPage(),
      ),
    );
  }
}
