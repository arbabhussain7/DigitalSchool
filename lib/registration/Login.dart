import 'package:digitalschool/Home/home.dart';
import 'package:digitalschool/registration/Sigup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});
  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool? isChecked = false;
  bool _isSecurePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
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
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 57.h, horizontal: 12),
            child: Center(
              child: Container(
                width: 343.w,
                height: 585.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                        colors: [
                          Color.fromRGBO(255, 255, 255, 0.6).withOpacity(0.1),
                          Color.fromRGBO(255, 255, 255, 1).withOpacity(0.5),
                        ])),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 33),
                    child: Container(
                      child: Image.asset(
                        "image/logo3.png",
                        width: 38.w,
                        height: 42.h,
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 32.sp,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(17, 24, 39, 1)),
                    ),
                  ),
                  Container(
                    child: Text(
                      "Enter your email and password to log in ",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(108, 114, 120, 1)),
                    ),
                  ),
                  SizedBox(height: 32.h),
                  Container(
                    width: 295.w,
                    height: 42.h,
                    child: TextField(
                      style: TextStyle(color: Colors.black),
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: Colors.white, width: 2),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15.h),
                  Container(
                    width: 295.w,
                    height: 42.h,
                    child: TextField(
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: Colors.white, width: 2),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 2,
                          ),
                        ),
                        suffixIcon: togglePassword(),
                      ),
                      obscureText: _isSecurePassword,
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.h),
                    child: Container(
                      child: Row(children: [
                        Container(
                          child: Checkbox(
                              value: isChecked,
                              activeColor: Colors.black,
                              onChanged: (newbool) {
                                setState(() {
                                  isChecked = newbool;
                                });
                              }),
                        ),
                        Container(
                          child: Text(
                            "Remember me",
                            style: TextStyle(
                                color: Color.fromRGBO(108, 114, 120, 1),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Container(
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Forgot Password ?",
                              style: TextStyle(
                                  fontSize: 14.sp, fontWeight: FontWeight.w500),
                            ),
                          ),
                        )
                      ]),
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Container(
                    width: 295.w,
                    height: 52.h,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        },
                        child: Text(
                          "Log In",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary:
                              Color.fromRGBO(0, 0, 78, 1), // background color
                          onPrimary: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(12), // button's shape
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Divider(
                          color: Colors.white,
                          endIndent: 14,
                          height: 22,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 122),
                          child: Text(
                            "Or login with",
                            style: TextStyle(
                                color: Color.fromRGBO(108, 114, 120, 1),
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Divider()
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 22),
                    child: Container(
                      child: Row(
                        children: [
                          Container(
                            width: 140.w,
                            height: 48.h,
                            child: Container(
                              width: 18.w,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                // border: Border.all(),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Image.asset(
                                "image/google.png",
                                width: 10.w,
                                height: 10.h,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 12.w,
                          ),
                          Container(
                            width: 140.w,
                            height: 48.h,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              // border: Border.all(),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Image.asset(
                              "image/fb.png",
                              width: 42,
                              height: 42,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 33.w,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 87),
                    child: Container(
                      child: Row(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                "Don’t have an account?",
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(108, 114, 120, 1)),
                              ),
                            ),
                            Container(
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SignUp()),
                                    );
                                  },
                                  child: Text(
                                    "Sign Up",
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(0, 0, 78, 1)),
                                  )),
                            ),
                          ]),
                    ),
                  ),
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget togglePassword() {
    return IconButton(
      onPressed: () {
        setState(() {
          _isSecurePassword = !_isSecurePassword;
        });
      },
      icon: _isSecurePassword
          ? Icon(Icons.visibility)
          : Icon(Icons.visibility_off),
      color: Colors.grey,
    );
  }
}
