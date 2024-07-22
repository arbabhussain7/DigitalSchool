import 'package:digitalschool/registration/Login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: 415.w,
          height: 912.h,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                  colors: [
                Color.fromRGBO(180, 158, 244, 1),
                Color.fromARGB(255, 226, 221, 221),
                Color.fromRGBO(235, 200, 148, 1),
              ])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 54.w, vertical: 15.h),
                child: Container(
                  child: Image.asset(
                    "image/logo1.png",
                    width: 280.w,
                    height: 130.h,
                    opacity: const AlwaysStoppedAnimation(.2),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 47,
                ),
                child: Container(
                  child: Image.asset(
                    "image/logo1.png",
                    width: 280.w,
                    height: 130.h,
                    opacity: const AlwaysStoppedAnimation(.1),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignIn()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 94,
                  ),
                  child: Container(
                    child: Image.asset(
                      "image/logo2.png",
                      width: 188.w,
                      height: 60.h,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 54.w, vertical: 13.h),
                child: Container(
                  child: Image.asset(
                    "image/logo1.png",
                    width: 280.w,
                    height: 130.h,
                    opacity: const AlwaysStoppedAnimation(.1),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 47,
                ),
                child: Container(
                  child: Image.asset(
                    "image/logo1.png",
                    width: 280.w,
                    height: 130.h,
                    opacity: const AlwaysStoppedAnimation(.2),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
