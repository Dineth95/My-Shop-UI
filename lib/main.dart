import 'package:flutter/material.dart';
import 'package:myshop_ui/routes/router.gr.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final _appRouter = AppRouter();

    return MaterialApp.router(
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(),
      debugShowCheckedModeBanner: false,
      title: 'Shopping App Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
