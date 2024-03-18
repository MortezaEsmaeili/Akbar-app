import 'package:flutter/material.dart';
import 'package:ino_school_app/login/screen/login_Page.dart';
import 'package:localstorage/localstorage.dart';
import '../common/theme.dart';
import './screen/intro.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final LocalStorage storage = LocalStorage('mory_esi');

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var data = storage.getItem('Intro_State');
    bool isIntro = false;
    if (data == null) {
      isIntro = true;
    }
    return MaterialApp.router(
      title: 'Ino.School',
      theme: appTheme,
      routerConfig: router(isIntro),
      debugShowCheckedModeBanner: false,
    );
  }
}

Widget getHome() {
  return const IntroScreenDefault();
}

GoRouter router(bool isIntro) {
  var initiaRout = '/login';
  if (isIntro) {
    initiaRout = '/intro';
  }

  return GoRouter(
    initialLocation: initiaRout,
    routes: [
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: '/intro',
        builder: (context, state) => const IntroScreenDefault(),
      ),
      GoRoute(
        path: '/catalog',
        builder: (context, state) => const LoginPage(),
        routes: [
          GoRoute(
            path: 'cart',
            builder: (context, state) => const LoginPage(),
          ),
        ],
      ),
    ],
  );
}
