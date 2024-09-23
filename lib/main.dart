// ignore_for_file: prefer_const_constructors, use_super_parameters, prefer_const_literals_to_create_immutables

import 'package:audio/list.dart';
import 'package:audio/provider/playlist_provider.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    
  ]);
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Future.delayed(Duration(seconds: 3));
  FlutterNativeSplash.remove();
  runApp(
   MyApp(), // Wrap your app
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 796),
        builder: (context, child) {
          return ChangeNotifierProvider(
            create: (context) {
              return PlaylistProvider();
            },
            child: MaterialApp(
              // locale arabic
              theme: ThemeData(
                scaffoldBackgroundColor: Color.fromARGB(255, 248, 239, 239),
              ),

              locale: Locale('ar', ''),
              localizationsDelegates: [
                GlobalMaterialLocalizations
                    .delegate, // uses `flutter_localizations`
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: [
                const Locale('ar', ''), // Arabic
              ],
              debugShowCheckedModeBanner: false,
              home: ListAudios(),
            ),
          );
        });
  }
}
