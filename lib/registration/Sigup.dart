import 'package:digitalschool/registration/Login.dart';
import 'package:digitalschool/registration/otp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _isSecurePassword = true;
  bool _isconfirmSecurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Container(
          width: 375.w,
          height: 772.h,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                  colors: [
                Color.fromRGBO(180, 158, 244, 1),
                Color.fromARGB(255, 226, 221, 221),
                Color.fromRGBO(235, 200, 148, 1),
              ])),
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Center(
              child: Container(
                width: 343.w,
                height: 556.h,
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
                    padding: const EdgeInsets.only(top: 13),
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
                      "Sign Up",
                      style: TextStyle(
                          fontSize: 32.sp,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(17, 24, 39, 1)),
                    ),
                  ),
                  Container(
                    child: Text(
                      "Create an account to continue! ",
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(108, 114, 120, 1)),
                    ),
                  ),
                  SizedBox(height: 32.h),
                  Container(
                    width: 275.w,
                    height: 42.h,
                    child: TextField(
                      style: TextStyle(color: Colors.black),
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: "Enter full name",
                        hintStyle: TextStyle(
                            fontSize: 14.sp,
                            color: Color.fromRGBO(108, 114, 120, 1)),
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
                    width: 275.w,
                    height: 42.h,
                    child: TextField(
                      style: TextStyle(color: Colors.black),
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: "Enter email",
                        hintStyle: TextStyle(
                            fontSize: 14.sp,
                            color: Color.fromRGBO(108, 114, 120, 1)),
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
                    width: 275.w,
                    height: 42.h,
                    child: TextField(
                      style: TextStyle(color: Colors.black),
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        hintStyle: TextStyle(
                            fontSize: 14.sp,
                            color: Color.fromRGBO(108, 114, 120, 1)),
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
                  SizedBox(height: 15.h),
                  Container(
                    width: 275.w,
                    height: 42.h,
                    child: TextField(
                      style: TextStyle(color: Colors.black),
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        hintText: "Confirm Password",
                        hintStyle: TextStyle(
                            fontSize: 14.sp,
                            color: Color.fromRGBO(108, 114, 120, 1)),
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
                        suffixIcon: togglePassword1(),
                      ),
                      obscureText: _isconfirmSecurePassword,
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Container(
                    width: 275.w,
                    height: 52.h,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OTPAddress()),
                          );
                        },
                        child: Text(
                          "Create Account",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.sp,
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
                          padding: EdgeInsets.symmetric(horizontal: 102.w),
                          child: Text(
                            "Or continue with",
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
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.w, vertical: 12.h),
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
                            width: 10.w,
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
                              width: 42.w,
                              height: 42.h,
                            ),
                          ),
                        ],
                      ),
                    ),
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
                                "Already have an account?",
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
                                          builder: (context) => SignIn()),
                                    );
                                  },
                                  child: Text(
                                    "Login",
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

  Widget togglePassword1() {
    return IconButton(
      onPressed: () {
        setState(() {
          _isconfirmSecurePassword = !_isconfirmSecurePassword;
        });
      },
      icon: _isconfirmSecurePassword
          ? Icon(Icons.visibility)
          : Icon(Icons.visibility_off),
      color: Colors.grey,
    );
  }
}
