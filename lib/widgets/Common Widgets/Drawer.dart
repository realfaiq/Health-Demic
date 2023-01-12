import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_demic/screens/Admin/admin_Home_Screen.dart';
import 'package:health_demic/screens/Doctor/doctor_Home_Screen.dart';
import 'package:health_demic/screens/Patient/patient_Home_Screen.dart';
import '../../screens/Common/log_In_Screen.dart';

class MainDrawer extends StatelessWidget {
  final String imageURL;
  final String name;
  final String email;
  final String password;
  final String userType;

  MainDrawer(
      this.imageURL, this.name, this.email, this.password, this.userType);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.blue,
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.sp, vertical: 100.sp),
        children: [
          CircleAvatar(
            radius: 100.0.r,
            backgroundImage: NetworkImage(imageURL),
          ),
          SizedBox(
            height: 20.h,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              name,
              style: TextStyle(color: Colors.white, fontSize: 25.sp),
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 50.sp),
            child: InkWell(
              onTap: () {
                userType == 'patient'
                    ? Navigator.of(context)
                        .pushReplacementNamed(PatientHomeScreen.routeName)
                    : userType == 'doctor'
                        ? Navigator.of(context)
                            .pushReplacementNamed(DoctorHomeScreen.routeName)
                        : Navigator.of(context)
                            .pushReplacementNamed(AdminHomeScreen.routeName);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.home,
                    size: 35.sp,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    'Home',
                    style: TextStyle(color: Colors.white, fontSize: 20.sp),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 50.sp),
            child: InkWell(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.edit,
                    size: 35.sp,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    'Edit Profile',
                    style: TextStyle(color: Colors.white, fontSize: 20.sp),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 50.sp),
            child: InkWell(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.privacy_tip,
                    size: 35.sp,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    'Privacy Policy',
                    style: TextStyle(color: Colors.white, fontSize: 20.sp),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 50.sp),
            child: InkWell(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => LogInScreen()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.logout,
                    size: 35.sp,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    'Log Out',
                    style: TextStyle(color: Colors.white, fontSize: 20.sp),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
