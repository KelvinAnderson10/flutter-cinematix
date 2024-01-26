import 'package:cinematix/data/firebase/firebase_authentication.dart';
import 'package:cinematix/data/firebase/firebase_user_repository.dart';
import 'package:cinematix/data/repositories/authentication.dart';
import 'package:cinematix/domain/usecases/login/login.dart';
import 'package:cinematix/presentation/providers/repositories/authentication/authentication_provider.dart';
import 'package:cinematix/presentation/providers/repositories/user_repository/user_repository_provider.dart';
import 'package:cinematix/presentation/providers/usecases/login_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
          child: ElevatedButton(onPressed: () {
            Login login = ref.watch(loginProvider);
            login(LoginParams(email: 'kelvinanders17@gmail.com', password: '123456')).then((result) {
              if (result.isSuccess) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Success')));
              } else {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(result.errorMessage!)));
              }
            });
          }, child: const Text('Login'))
        ),
    );
  }
}