import 'package:digitalschool/registration/Login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OTPAddress extends StatefulWidget {
  const OTPAddress({super.key});
  @override
  State<OTPAddress> createState() => _OTPAddressState();
}

class _OTPAddressState extends State<OTPAddress> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        width: 415,
        height: 912,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
                colors: [
              Color.fromRGBO(180, 158, 244, 1),
              Color.fromARGB(255, 226, 221, 221),
              Color.fromRGBO(235, 200, 148, 1),
            ])),
        child: Center(
          child: Container(
            width: 343.w,
            height: 413.h,
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
                    height: 42..h,
                  ),
                ),
              ),
              Container(
                child: Text(
                  "My child",
                  style: TextStyle(
                      fontSize: 32.sp,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(17, 24, 39, 1)),
                ),
              ),
              Container(
                child: Text(
                  "Enter your child PIN number ",
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(108, 114, 120, 1)),
                ),
              ),
              SizedBox(
                height: 32.h,
                width: 22.w,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.w),
                child: Row(
                  children: [
                    Container(
                      width: 60.w,
                      height: 60.h,
                      child: TextField(
                        style: TextStyle(color: Colors.black),
                        // style: Theme.of(context).textTheme.headlineMedium,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromRGBO(0, 0, 78, 1),
                              width: 2,
                            ),
                          ),
                        ),
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 22.w,
                    ),
                    Container(
                      width: 60.w,
                      height: 60.h,
                      child: TextField(
                        style: TextStyle(color: Colors.black),

                        // style: Theme.of(context).textTheme.headlineMedium,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromRGBO(0, 0, 78, 1),
                              width: 2,
                            ),
                          ),
                        ),
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 22.w,
                    ),
                    Container(
                      width: 60.w,
                      height: 60.h,
                      child: TextField(
                        style: TextStyle(color: Colors.black),

                        // style: Theme.of(context).textTheme.headlineMedium,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromRGBO(0, 0, 78, 1),
                              width: 2,
                            ),
                          ),
                        ),
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 22.w,
                    ),
                    Container(
                      width: 60.w,
                      height: 60.h,
                      child: TextField(
                        style: TextStyle(color: Colors.black),

                        // style: Theme.of(context).textTheme.headlineMedium,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromRGBO(0, 0, 78, 1),
                              width: 2,
                            ),
                          ),
                        ),
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 22.h,
              ),
              Container(
                width: 295.w,
                height: 52.h,
                child: DottedBorder(
                  dashPattern: [6, 6, 6, 6],
                  color: Color.fromRGBO(0, 0, 78, 1),
                  radius: Radius.circular(23),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Container(
                          child: Icon(
                            Icons.add,
                            color: Color.fromRGBO(0, 0, 78, 1),
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          "Add another child",
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 78, 1),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 22.h,
              ),
              Container(
                width: 295.w,
                height: 52.h,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignIn()),
                      );
                    },
                    child: Text(
                      "Continue",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(0, 0, 78, 1), // background color
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
            ]),
          ),
        ),
      ),
    );
  }
}
