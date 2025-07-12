import 'package:flutter/material.dart';
import 'package:eslame/app_theme.dart';
import 'package:eslame/home_screen.dart';
import 'package:eslame/quran/sura_details_screen.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Future.delayed(Duration(seconds: 3)); // تأخير صناعي لرؤية Splash
  runApp(Islame());
}
class Islame extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routeName:(_)=>HomeScreen(),
        SuraDetailsScreen.routeName:(_)=>SuraDetailsScreen(),
      },
      initialRoute: HomeScreen.routeName,
      theme: AppTheme.darkTheme ,
      darkTheme:AppTheme.darkTheme ,
      themeMode:ThemeMode.dark ,
    );
  }
}