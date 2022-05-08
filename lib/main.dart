import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:telewebion/root.dart';
import 'package:telewebion/them_color.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle(
    systemNavigationBarColor: DarkThemColor.blackColor, // navigation bar color
    statusBarColor: DarkThemColor.blackColor, // status bar color
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'تلوبیون',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'yekan',
        scaffoldBackgroundColor: DarkThemColor.blackColor,
        brightness: Brightness.dark,
        colorScheme: ColorScheme.dark(
          background: DarkThemColor.blackColor,
          primary: DarkThemColor.whiteColor,
          secondary: DarkThemColor.secondaryColor,
          surface: DarkThemColor.surfaceColor,
          onSecondary: DarkThemColor.whiteColor,
          onBackground: DarkThemColor.whiteColor,
          onPrimary: DarkThemColor.whiteColor,
        ),
        textTheme: TextTheme(
            bodyText2: const TextStyle(fontSize: 17),
            bodyText1: const TextStyle(fontSize: 13),
            headline6: const TextStyle(fontWeight: FontWeight.bold),
            caption:
                TextStyle(fontSize: 14, color: Colors.white.withOpacity(0.5))),
      ),
      home: const RootScreen(),
    );
  }
}
