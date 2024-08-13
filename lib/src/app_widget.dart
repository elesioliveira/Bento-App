import 'package:bento_app/src/app/pages/base/base_screen.dart';
import 'package:flutter/material.dart';
import '../design_system/core/settings/widgets/screen_util_app.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilApp(
      child: MaterialApp(
        title: 'Bento APP',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
          useMaterial3: true,
        ),
        home: const BaseScreen(),
      ),
    );
  }
}
