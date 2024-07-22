// import 'package:digitalschool/darwer/Darweer.dart';
import 'package:digitalschool/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          // width: 415,
          // height: ,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                  colors: [
                Color.fromRGBO(180, 158, 244, 1),
                Color.fromARGB(255, 226, 221, 221),
                Color.fromRGBO(235, 200, 148, 1),
              ])),
          child: SafeArea(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Builder(
                            builder: (context) => InkWell(
                              onTap: () {
                                Scaffold.of(context).openDrawer();
                              },
                              child: Container(
                                  child: Image.asset(
                                "image/menu.png",
                                color: Color.fromRGBO(0, 0, 0, 1),
                                width: 42.w,
                                height: 42.h,
                              )),
                            ),
                          ),
                          Container(
                              child: Image.asset(
                            "image/logo2.png",
                            // color: Color.fromRGBO(0, 0, 0, 1),
                            width: 98.w,
                            height: 42.h,
                          )),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProfilePerson()),
                              );
                            },
                            child: Container(
                                width: 58.w,
                                height: 58.h,
                                child: CircleAvatar(
                                  backgroundImage: AssetImage(
                                    "image/profile.png",
                                  ),
                                )),
                          ),
                        ]),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 35.w, vertical: 20.h),
                  child: Container(
                    width: 335.w,
                    height: 186.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            end: Alignment.topLeft,
                            colors: [
                              Color.fromRGBO(255, 255, 255, 0.6)
                                  .withOpacity(0.1),
                              Color.fromRGBO(255, 255, 255, 1).withOpacity(0.5),
                            ])),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Container(
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Text(
                                      "Important Info",
                                      style: TextStyle(
                                          color: Color.fromRGBO(255, 144, 0, 1),
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  Container(
                                    child: Icon(
                                      Icons.info,
                                      color: Color.fromRGBO(255, 57, 0, 1),
                                    ),
                                  )
                                ]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Container(
                            width: 288.w,
                            height: 98.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromRGBO(250, 250, 250, 1)),
                            child: Column(children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 26.w, vertical: 17.h),
                                child: Container(
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Image.asset(
                                          "image/emoji.png",
                                          width: 24.w,
                                          height: 24.h,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Container(
                                        child: Text(
                                          "She was a bit noisy today!",
                                          style: TextStyle(
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w500,
                                              color:
                                                  Color.fromRGBO(0, 0, 78, 1)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 22.w, vertical: 5.h),
                                child: Container(
                                  width: 255.w,
                                  height: 17.h,
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Icon(Icons.calendar_month,
                                            size: 17,
                                            color: Color.fromRGBO(
                                                158, 158, 158, 1)),
                                      ),
                                      SizedBox(
                                        width: 7.w,
                                      ),
                                      Container(
                                        child: Text(
                                          "24 June, 2024",
                                          style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w400,
                                              color: Color.fromRGBO(
                                                  158, 158, 158, 1)),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 62.w,
                                      ),
                                      Container(
                                        child: Text(
                                          "12:02:02 am",
                                          style: TextStyle(
                                              fontSize: 10.sp,
                                              fontWeight: FontWeight.w400,
                                              color: Color.fromRGBO(
                                                  158, 158, 158, 1)),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ]),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                /// Second Box

                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 35.w,
                  ),
                  child: Container(
                    width: 335.w,
                    height: 339.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            end: Alignment.topLeft,
                            colors: [
                              Color.fromRGBO(255, 255, 255, 0.6)
                                  .withOpacity(0.1),
                              Color.fromRGBO(255, 255, 255, 1).withOpacity(0.5),
                            ])),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              // border: Border.all(),
                              borderRadius: BorderRadius.circular(12)),
                          child: Stack(
                            children: [
                              Container(
                                // width: 335,
                                // height: 129,
                                child: Image.asset(
                                  "image/image1.png",
                                  // height: 122,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 22.w, vertical: 12.h),
                                child: Container(
                                  child: Text(
                                    "MODULE 3 - Artist: Sequence and \nArtist Lab",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 12.w, vertical: 4.h),
                          child: Container(
                            child: Text(
                              "Today we learned about Artist: Sequences.",
                              style: TextStyle(
                                  color: Color.fromRGBO(108, 114, 120, 1),
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 18.w),
                          child: Container(
                            width: 299.w,
                            height: 140.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.white),
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 13.w, vertical: 12.h),
                                  child: Container(
                                    child: Text(
                                      "Questions that you can ask your child",
                                      style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w600,
                                          color: Color.fromRGBO(17, 24, 39, 1)),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 2.w),
                                  child: Container(
                                      width: 264.w,
                                      height: 25.h,
                                      child: Row(
                                        children: [
                                          Container(
                                              child: ImageIcon(
                                            AssetImage(
                                              "image/one.png",
                                            ),
                                            color: Color.fromRGBO(0, 0, 78, 1),
                                          )),
                                          SizedBox(
                                            width: 7.w,
                                          ),
                                          Container(
                                            child: Text(
                                              "How do angles work in Code.org?",
                                              style: TextStyle(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w500,
                                                color:
                                                    Color.fromRGBO(0, 0, 78, 1),
                                              ),
                                            ),
                                          )
                                        ],
                                      )),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 25.w, vertical: 15.h),
                                  child: Container(
                                    width: 255.w,
                                    height: 17.h,
                                    child: Row(
                                      children: [
                                        Container(
                                          child: Icon(Icons.calendar_month,
                                              size: 17,
                                              color: Color.fromRGBO(
                                                  158, 158, 158, 1)),
                                        ),
                                        SizedBox(
                                          width: 7.w,
                                        ),
                                        Container(
                                          child: Text(
                                            "24 June, 2024",
                                            style: TextStyle(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w400,
                                                color: Color.fromRGBO(
                                                    158, 158, 158, 1)),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 42.w,
                                        ),
                                        Container(
                                          child: Text(
                                            "12:02:02 am",
                                            style: TextStyle(
                                                fontSize: 10.sp,
                                                fontWeight: FontWeight.w400,
                                                color: Color.fromRGBO(
                                                    158, 158, 158, 1)),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )

                ///  third Box
                ///
                ,
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 35.w, vertical: 20.h),
                  child: Container(
                    width: 335.w,
                    height: 186.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            end: Alignment.topLeft,
                            colors: [
                              Color.fromRGBO(255, 255, 255, 0.6)
                                  .withOpacity(0.1),
                              Color.fromRGBO(255, 255, 255, 1).withOpacity(0.5),
                            ])),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Container(
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Text(
                                      "Present",
                                      style: TextStyle(
                                          color: Color.fromRGBO(17, 24, 39, 1),
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  Container(
                                    child: Icon(
                                      Icons.check_circle,
                                      size: 24,
                                      color: Color.fromRGBO(35, 209, 0, 1),
                                    ),
                                  )
                                ]),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 13.w, vertical: 12.h),
                          child: Container(
                            width: 288.w,
                            height: 98.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromRGBO(250, 250, 250, 1)),
                            child: Column(children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 26.w, vertical: 7.h),
                                child: Container(
                                  child: Row(
                                    children: [
                                      Container(
                                          child: Text(
                                        "Level",
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            color:
                                                Color.fromRGBO(65, 70, 82, 1),
                                            fontWeight: FontWeight.w600),
                                      )),
                                      SizedBox(
                                        width: 54.w,
                                      ),
                                      Container(
                                        child: Text(
                                          "Code(Level 1)",
                                          style: TextStyle(
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w500,
                                              color: Color.fromRGBO(
                                                  108, 114, 120, 1)),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 12.w,
                                      ),
                                      Container(
                                          child: ImageIcon(
                                              AssetImage("image/trophy.png"),
                                              size: 14.sp,
                                              color: Color.fromRGBO(
                                                  255, 201, 63, 1))),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 25.w),
                                child: Container(
                                  child: Row(
                                    children: [
                                      Container(
                                          child: Text(
                                        "Curriculum",
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            color:
                                                Color.fromRGBO(65, 70, 82, 1),
                                            fontWeight: FontWeight.w600),
                                      )),
                                      SizedBox(
                                        width: 25.w,
                                      ),
                                      Container(
                                        child: Text(
                                          "MODULE 3-Artist...",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              color: Color.fromRGBO(
                                                  108, 114, 120, 1)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 37, top: 10),
                                child: Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        child: Icon(Icons.calendar_month,
                                            size: 17,
                                            color: Color.fromRGBO(0, 0, 78, 1)),
                                      ),
                                      Container(
                                        child: Text(
                                          "24 June, 2024",
                                          style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w500,
                                              color:
                                                  Color.fromRGBO(0, 0, 78, 1)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ]),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // 4th box

                Container(
                  width: 334.w,
                  height: 81.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 22),
                        child: Container(
                          width: 46.w,
                          height: 46.h,
                          decoration: BoxDecoration(
                              // border: Border.all(),
                              color: Color.fromRGBO(51, 94, 247, 0.08),
                              borderRadius: BorderRadius.circular(92)),
                          child: Icon(
                            Icons.check_circle_outline,
                            color: Color.fromRGBO(20, 20, 43, 1),
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          "Received best student of the day\n Badge",
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(0, 0, 78, 1)),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 42.h,
                )
              ],
            ),
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                  child: Column(
                    children: [
                      CircleAvatar(
                        maxRadius: 44,
                        minRadius: 33,
                        backgroundImage: AssetImage(
                          "image/profile.png",
                        ),
                      ),
                      Text(
                        "Andrew Ainsley",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(17, 24, 39, 1)),
                      ),
                      Text(
                        "Parent",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(108, 114, 120, 1)),
                      )
                    ],
                  )),
            ),
            Divider(
              indent: 12,
            ),
            ListTile(
              leading: InkWell(
                child: Icon(
                  Icons.change_circle_outlined,
                  size: 24,
                  color: Color.fromRGBO(65, 70, 82, 1),
                ),
              ),
              title: Text(
                "Class Activity",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(65, 70, 82, 1),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.wallet_rounded,
                size: 24,
                color: Color.fromRGBO(65, 70, 82, 1),
              ),
              title: Text(
                "Attendence",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.notifications,
                size: 24,
                color: Color.fromRGBO(65, 70, 82, 1),
              ),
              title: Text(
                "Anouncement",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.speaker,
                size: 24,
                color: Color.fromRGBO(65, 70, 82, 1),
              ),
              title: Text(
                "Student Progress",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.rice_bowl,
                size: 24,
                color: Color.fromRGBO(65, 70, 82, 1),
              ),
              title: Text(
                "Teacher Notes",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 183,
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                size: 24,
                color: Color.fromRGBO(65, 70, 82, 1),
              ),
              title: Text(
                "Settings",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.logout,
                size: 24,
                color: Color.fromRGBO(247, 85, 85, 1),
              ),
              title: Text(
                "Log Out",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(247, 85, 85, 1)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
