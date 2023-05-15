import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_box_users/Feature/HomeScreen/HomeScreen.dart';
import 'package:medical_box_users/Feature/LoginScreen/loginscreen.dart';
import 'Feature/LoginScreen/register_screen.dart';
import 'Feature/ProfileScreen/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Medical Box',
          theme: ThemeData(
            primarySwatch: Colors.green,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          routes: {
            'register_screen': (_) => const RegisterScreen(),
            'profile_screen': (_) => const ProfileScreen(),
            'home_screen': (_) => const HomeScreen(),
            'login_screen': (_) => const LoginScreen(),
          },
          home: const LoginScreen(),
        );
      },
    );
  }
}
