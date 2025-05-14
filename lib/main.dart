import 'package:flutter/material.dart';
import 'package:flutter_app/data/constants.dart';
import 'package:flutter_app/data/notifiers.dart';
import 'package:flutter_app/views/pages/welcome_page.dart';
import 'package:shared_preferences/shared_preferences.dart';



void main() async{
  // runApp() မတိုင်ခင် SharedPreferences လိုမျိုး platform channels တွေသုံးမယ်ဆိုရင် ဒါထည့်ဖို့လိုပါတယ်
  WidgetsFlutterBinding.ensureInitialized();

  // SharedPreferences ကနေ theme တန်ဖိုးကို ကြိုတင် load လုပ်ပါ
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  // KConstants.themeModeKey နဲ့သိမ်းထားတဲ့ တန်ဖိုးကိုဖတ်မယ်၊ မရှိရင် false (light mode) ကို default ယူမယ်
  final bool savedThemeIsDark = prefs.getBool(KConstants.themeModeKey) ?? false;

  // isDarkModeNotifier ကို SharedPreferences ကရတဲ့တန်ဖိုးနဲ့ initialize လုပ်ပါ
  isDarkModeNotifier = ValueNotifier(savedThemeIsDark);

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // initThemeMode();
    super.initState();
  }
  // void initThemeMode() async{
  //   final SharedPreferences prefs = await SharedPreferences.getInstance();
  //   final bool? repeat = prefs.getBool(KConstants.themeModeKey);
  //   isDarkModeNotifier.value = repeat ?? false;
  // }
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable: isDarkModeNotifier, builder: (context, isDarkMode, child) {
      return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal,brightness: isDarkMode ? Brightness.dark : Brightness.light),
      ),
      // home: const WidgetTree(),
      home: WelcomePage(),
    );
    });
  }
}
