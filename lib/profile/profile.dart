import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfilePerson extends StatefulWidget {
  const ProfilePerson({super.key});

  @override
  State<ProfilePerson> createState() => _ProfilePersonState();
}

class _ProfilePersonState extends State<ProfilePerson> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
          child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 63),
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
                        ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          width: 104.w,
                          height: 104.h,
                          child: CircleAvatar(
                            backgroundImage: AssetImage(
                              "image/profile.png",
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            "Andrew Ainsley",
                            style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(17, 24, 39, 1)),
                          ),
                        ),
                        Container(
                          child: Text(
                            "Parent",
                            style: TextStyle(
                                color: Color.fromRGBO(108, 114, 120, 1),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        SizedBox(
                          height: 22.h,
                        ),

                        ///1st Box Start
                        Container(
                          width: 335.w,
                          height: 280.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              gradient: LinearGradient(
                                  begin: Alignment.bottomRight,
                                  end: Alignment.topLeft,
                                  colors: [
                                    Color.fromRGBO(255, 255, 255, 0.6)
                                        .withOpacity(0.1),
                                    Color.fromRGBO(255, 255, 255, 1)
                                        .withOpacity(0.5),
                                  ])),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 15, left: 33),
                                child: Container(
                                  child: Text(
                                    "Parent",
                                    style: TextStyle(
                                        color: Color.fromRGBO(108, 114, 120, 1),
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 12.h,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 22.w, vertical: 10.h),
                                child: Container(
                                  width: 295.w,
                                  height: 42.h,
                                  child: TextField(
                                    style: TextStyle(color: Colors.black),
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                        hintText:
                                            "andrew_ainsley@digitalschool.com",
                                        hintStyle: TextStyle(
                                            fontSize: 14.sp,
                                            color: Color.fromRGBO(
                                                108, 114, 120, 1)),
                                        filled: true,
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                              color: Colors.white, width: 2),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.white,
                                            width: 2,
                                          ),
                                        ),
                                        prefixIcon: Icon(
                                          Icons.email,
                                          color: Color.fromRGBO(0, 0, 78, 1),
                                        )),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 22.w, vertical: 10.h),
                                child: Container(
                                  width: 295.w,
                                  height: 42.h,
                                  child: TextField(
                                    style: TextStyle(color: Colors.black),
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                        hintText: "(629) 555-0129",
                                        hintStyle: TextStyle(
                                            fontSize: 14.sp,
                                            color: Color.fromRGBO(
                                                108, 114, 120, 1)),
                                        filled: true,
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                              color: Colors.white, width: 2),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.white,
                                            width: 2,
                                          ),
                                        ),
                                        prefixIcon: Icon(
                                          Icons.call,
                                          color: Color.fromRGBO(0, 0, 78, 1),
                                        )),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 22.w, vertical: 10.h),
                                child: Container(
                                  width: 295.w,
                                  height: 42.h,
                                  child: TextField(
                                    style: TextStyle(color: Colors.black),
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                        hintText:
                                            "2118 Thornridge Cir. Syracuse, Connecticut 35624",
                                        hintStyle: TextStyle(
                                            fontSize: 14.sp,
                                            color: Color.fromRGBO(
                                                108, 114, 120, 1)),
                                        filled: true,
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                              color: Colors.white, width: 2),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.white,
                                            width: 2,
                                          ),
                                        ),
                                        prefixIcon: Icon(
                                          Icons.maps_home_work_outlined,
                                          color: Color.fromRGBO(0, 0, 78, 1),
                                        )),
                                  ),
                                ),
                              ),

                              //Box three
                            ],
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
                  width: 335.w,
                  height: 310.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          end: Alignment.topLeft,
                          colors: [
                            Color.fromRGBO(255, 255, 255, 0.6).withOpacity(0.1),
                            Color.fromRGBO(255, 255, 255, 1).withOpacity(0.5),
                          ])),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 22.w, vertical: 12.h),
                        child: Container(
                          child: Row(children: [
                            Container(
                              child: CircleAvatar(
                                backgroundImage: AssetImage("image/donna.png"),
                              ),
                            ),
                            Container(
                              child: Text(
                                "Donna D",
                                style: TextStyle(
                                    color: Color.fromRGBO(33, 33, 33, 1),
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ]),
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 27.w, vertical: 15.h),
                              child: Container(
                                width: 117.w,
                                height: 52.h,
                                child: TextField(
                                  style: TextStyle(color: Colors.black),
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                      hintText: "Donna",
                                      hintStyle: TextStyle(
                                          fontSize: 14.sp,
                                          color:
                                              Color.fromRGBO(108, 114, 120, 1)),
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                            color: Colors.white, width: 2),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.white,
                                          width: 2,
                                        ),
                                      ),
                                      prefixIcon: Icon(
                                        Icons.perm_contact_cal,
                                        color: Color.fromRGBO(0, 0, 78, 1),
                                      )),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12.w, vertical: 10.h),
                              child: Container(
                                width: 117.w,
                                height: 52.h,
                                child: TextField(
                                    style: TextStyle(color: Colors.black),
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      // label: Text("Age"),
                                      hintText: "Not Set",
                                      hintStyle: TextStyle(
                                          fontSize: 14.sp,
                                          color:
                                              Color.fromRGBO(108, 114, 120, 1)),
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                            color: Colors.white, width: 2),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.white,
                                          width: 2,
                                        ),
                                      ),
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 287.w,
                        height: 127.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 12, left: 22),
                              child: Container(
                                child: Row(
                                  children: [
                                    Container(
                                        child: Text(
                                      "Level",
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          color: Color.fromRGBO(65, 70, 82, 1),
                                          fontWeight: FontWeight.w600),
                                    )),
                                    SizedBox(
                                      width: 84.w,
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
                                                108, 114, 120, 1))),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 12, left: 22),
                              child: Container(
                                child: Row(
                                  children: [
                                    Container(
                                        child: Text(
                                      "Days",
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          color: Color.fromRGBO(65, 70, 82, 1),
                                          fontWeight: FontWeight.w600),
                                    )),
                                    SizedBox(
                                      width: 114.sp,
                                    ),
                                    Container(
                                      child: Text(
                                        "Mon, Wed",
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w500,
                                            color: Color.fromRGBO(
                                                108, 114, 120, 1)),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 12.sp,
                                    ),
                                    Container(
                                        child: ImageIcon(
                                            AssetImage("image/time.png"),
                                            size: 14.sp,
                                            color: Color.fromRGBO(
                                                108, 114, 120, 1))),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 12, left: 22),
                              child: Container(
                                child: Row(
                                  children: [
                                    Container(
                                        child: Text(
                                      "Time",
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          color: Color.fromRGBO(65, 70, 82, 1),
                                          fontWeight: FontWeight.w600),
                                    )),
                                    SizedBox(
                                      width: 94.w,
                                    ),
                                    Container(
                                      child: Text(
                                        "14:00 - 15:30",
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
                                            AssetImage("image/calendar.png"),
                                            size: 14.sp,
                                            color: Color.fromRGBO(
                                                108, 114, 120, 1))),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 18.h,
                ),
                Container(
                  width: 335.w,
                  height: 310.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          end: Alignment.topLeft,
                          colors: [
                            Color.fromRGBO(255, 255, 255, 0.6).withOpacity(0.1),
                            Color.fromRGBO(255, 255, 255, 1).withOpacity(0.5),
                          ])),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 22.w, vertical: 12.h),
                        child: Container(
                          child: Row(children: [
                            Container(
                              child: CircleAvatar(
                                backgroundImage: AssetImage("image/jimmy.png"),
                              ),
                            ),
                            Container(
                              child: Text(
                                "Jimmy D",
                                style: TextStyle(
                                    color: Color.fromRGBO(33, 33, 33, 1),
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ]),
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 27.w, vertical: 15.h),
                              child: Container(
                                width: 117.w,
                                height: 52.h,
                                child: TextField(
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                      hintText: "Jimmy",
                                      hintStyle: TextStyle(
                                          fontSize: 14.sp,
                                          color:
                                              Color.fromRGBO(108, 114, 120, 1)),
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                            color: Colors.white, width: 2),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.white,
                                          width: 2,
                                        ),
                                      ),
                                      prefixIcon: Icon(
                                        Icons.perm_contact_cal,
                                        color: Color.fromRGBO(0, 0, 78, 1),
                                      )),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12.w, vertical: 10.h),
                              child: Container(
                                width: 117.w,
                                height: 52.h,
                                child: TextField(
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      hintText: "Not Set",
                                      hintStyle: TextStyle(
                                          fontSize: 14.sp,
                                          color:
                                              Color.fromRGBO(108, 114, 120, 1)),
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                            color: Colors.white, width: 2),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.white,
                                          width: 2,
                                        ),
                                      ),
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 287.w,
                        height: 127.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 12, left: 22),
                              child: Container(
                                child: Row(
                                  children: [
                                    Container(
                                        child: Text(
                                      "Level",
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          color: Color.fromRGBO(65, 70, 82, 1),
                                          fontWeight: FontWeight.w600),
                                    )),
                                    SizedBox(
                                      width: 84.w,
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
                                                108, 114, 120, 1))),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 12, left: 22),
                              child: Container(
                                child: Row(
                                  children: [
                                    Container(
                                        child: Text(
                                      "Days",
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          color: Color.fromRGBO(65, 70, 82, 1),
                                          fontWeight: FontWeight.w600),
                                    )),
                                    SizedBox(
                                      width: 114.w,
                                    ),
                                    Container(
                                      child: Text(
                                        "Mon, Wed",
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
                                            AssetImage("image/time.png"),
                                            size: 14.sp,
                                            color: Color.fromRGBO(
                                                108, 114, 120, 1))),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 12, left: 22),
                              child: Container(
                                child: Row(
                                  children: [
                                    Container(
                                        child: Text(
                                      "Time",
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          color: Color.fromRGBO(65, 70, 82, 1),
                                          fontWeight: FontWeight.w600),
                                    )),
                                    SizedBox(
                                      width: 94.w,
                                    ),
                                    Container(
                                      child: Text(
                                        "14:00 - 15:30",
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
                                            AssetImage("image/calendar.png"),
                                            size: 14.sp,
                                            color: Color.fromRGBO(
                                                108, 114, 120, 1))),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 122.h,
                )
              ]),
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
