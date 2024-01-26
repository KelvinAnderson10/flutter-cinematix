import 'package:cinematix/data/firebase/firebase_authentication.dart';
import 'package:cinematix/data/firebase/firebase_user_repository.dart';
import 'package:cinematix/domain/usecases/login/login.dart';
import 'package:cinematix/presentation/pages/login_page/login_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: LoginPage()
      ),
    );
  }
}
