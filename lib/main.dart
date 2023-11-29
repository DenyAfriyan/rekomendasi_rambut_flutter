import 'package:flutter/material.dart';
import 'package:rekomendasi_cukur/pages/decision_page.dart';
import 'package:rekomendasi_cukur/pages/home_page.dart';
import 'package:rekomendasi_cukur/pages/result_page.dart';
import 'package:rekomendasi_cukur/pages/style_pria_page.dart';
import 'package:rekomendasi_cukur/pages/style_wanite_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://ylztqjlobumjvajkwbpk.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InlsenRxamxvYnVtanZhamt3YnBrIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDEwNjcxNDMsImV4cCI6MjAxNjY0MzE0M30.duQp1uo8QnYsVVA7gvppDSNFPnh3pr4QkRWPdfuJxMM',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Rekomendasi Rambut',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        '/': (context) => const HomePage(),
        '/stylepria': (context) => const StylePriaPage(),
        '/stylewanita': (context) => const StyleWanitaPage(),
        '/decision': (context) => const DecisionPage(),
      },
    );
  }
}
