import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_module/main.config.dart';
import 'package:injectable/injectable.dart';
import 'MainScreen.dart';
import 'package:get_it/get_it.dart';
import 'bloc/home/HomeBloc.dart';
import 'package:flutter_module/repository/Repository.dart';

GetIt locator = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies() async => locator.init();

@module
abstract class AppModule {
}

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or press Run > Flutter Hot Reload in a Flutter IDE). Notice that the
          // counter didn't reset back to zero; the application is not restarted.
          primarySwatch: Colors.blue,
        ),
        routes: {
          "home": (context) => const MainScreenPage(title: "home")
        },
        home: const MainScreenPage(title: 'Flutter Demo Home Page'));
  }
}
