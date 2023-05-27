import 'package:flutter/material.dart';

import 'authentication/authenticaton_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'authentication/controller/authentication_controller.dart';
import 'profile/user_profile.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authenticationState = ref.watch(authProvider);

    Widget getHome() {
      if (authenticationState.status == AuthenticationStatus.authenticated) {
        return const Profile();
      } else if (authenticationState.status ==
          AuthenticationStatus.unauthenticated) {
        return const AuthenticationView();
      } else {
        return const AuthenticationView();
      }
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter authentication using riverpod',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: getHome(),
    );
  }
}
