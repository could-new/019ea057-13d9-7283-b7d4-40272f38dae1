import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/calendar_screen.dart';
import 'screens/clients_screen.dart';
import 'screens/news_screen.dart';

void main() {
  runApp(const KominiarzApp());
}

class KominiarzApp extends StatelessWidget {
  const KominiarzApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kominiarz Szczecin',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/calendar': (context) => const CalendarScreen(),
        '/clients': (context) => const ClientsScreen(),
        '/news': (context) => const NewsScreen(),
      },
    );
  }
}
