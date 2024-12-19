import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/scr/features/authentication/screens/splash/splash_screen.dart';
import 'package:get_x/scr/utils/theme/theme.dart';
import 'package:device_preview/device_preview.dart';

void main() => runApp(
      DevicePreview(
        enabled: true,
        builder: (context) => const MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: MAppTheme.LightTheme,
      darkTheme: MAppTheme.DarkTheme,
      themeMode: ThemeMode.system,
      home: const SplashScreen(),
    );
  }
}
