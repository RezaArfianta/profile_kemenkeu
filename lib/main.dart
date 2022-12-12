import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart' as DotEnv;
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'package:get/get.dart';
import 'package:profilekemenkeu/info_pegawai/main/screen/info_pegawai_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DotEnv.dotenv.load(fileName: ".env");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
        primaryColor: Colors.white,
        appBarTheme: AppBarTheme(
            backgroundColor: Colors.white70,
            foregroundColor: Colors.black87,
            elevation: 0),
        bottomNavigationBarTheme:
            BottomNavigationBarThemeData(selectedItemColor: Color(0xFF005FAC)),
        fontFamily: 'Mulish',
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        appBarTheme: AppBarTheme(elevation: 0),
        // colorScheme: ColorScheme.dark(),
        // primaryColor: Color(0xFF4695f6),
        // primaryColor: Colors.black12,
        accentColor: Color(0xFF03a9f4),
        fontFamily: 'Mulish',
      ),
      themeMode: ThemeMode.system,
      builder: EasyLoading.init(),
      home: InfoPegawaiPage(),
    );
  }
}
