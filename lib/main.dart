import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'screens/Common/log_In_Screen.dart';
import 'screens/Common/sign_up_Screen.dart';
import 'screens/Patient/home_Screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 900),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Health Demic',
            theme: ThemeData(
                primarySwatch: Colors.blue,
                accentColor: Colors.white,
                errorColor: Colors.red,
                textTheme: ThemeData.light()
                    .textTheme
                    .copyWith(bodyMedium: TextStyle(fontSize: 12))),
            // home: LogInScreen(),
            routes: {
              '/': (context) => LogInScreen(),
              SignUpScreen.routeName: (context) => SignUpScreen(),
              PatientHomeScreen.routeName: (context) => PatientHomeScreen(),
            },
          );
        });
  }
}
