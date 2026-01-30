
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/features/home/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../auth/login/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _checkLogin();
  }

  void _checkLogin() async {
    final prefs = await SharedPreferences.getInstance();
    final isLoggedIn = prefs.getBool('isLoggedIn') ?? false;

    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) =>
          isLoggedIn ? const HomeScreen() : const Login(),
        ),
      );
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          spacing: 15,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/images/groceries.svg'),
            Text('Buy Grocery' , style: GoogleFonts.poppins(
              fontSize: 25.sp,
              fontWeight: FontWeight.w700,
            )),
            Text('Lorem ipsum dolor sit amet, consetetur \n      sadipscing elitr, sed diam nonumy ',
                style: GoogleFonts.poppins(
                  color: Color(0xff868889),
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w500,
                ))
          ],
        ),
      ),

    );
  }
}
