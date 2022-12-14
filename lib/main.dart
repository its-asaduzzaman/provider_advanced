import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_advanced/provider/auth_provider.dart';
import 'package:provider_advanced/provider/example_one_provider.dart';
import 'package:provider_advanced/provider/favourite_provider.dart';
import 'package:provider_advanced/screens/example_one_screen.dart';
import 'package:provider_advanced/screens/favourite/favorite_screen.dart';
import 'package:provider_advanced/screens/favourite/notify_listener_screen.dart';
import 'package:provider_advanced/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ExampleOneProvider()),
        ChangeNotifierProvider(create: (_) => FavouriteProvider()),
        ChangeNotifierProvider(create: (_) => AuthProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
        ),
        home: const LoginScreen(),
      ),
    );
  }
}
