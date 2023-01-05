import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});
  static const routeName = '/sign-up';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          Image.asset(
            'assets/images/HD.png',
            height: 300.h,
            width: 300.w,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 57.h, vertical: 5.h),
            child: Form(
                child: Column(children: [
              TextFormField(
                  decoration: const InputDecoration(
                      hintText: 'Full Name', prefixIcon: Icon(Icons.person)),
                  style: TextStyle(fontSize: 18.sp)),
              SizedBox(
                height: 13.h,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    hintText: 'Enter your Email',
                    prefixIcon: Icon(
                      Icons.email,
                    )),
                style: TextStyle(fontSize: 18.sp),
              ),
              SizedBox(
                height: 13.h,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    hintText: 'Enter your Password',
                    prefixIcon: Icon(
                      Icons.lock,
                    )),
                style: TextStyle(fontSize: 18.sp),
              ),
              SizedBox(
                height: 13.h,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    hintText: 'Confirm Your Password',
                    prefixIcon: Icon(
                      Icons.lock,
                    )),
                style: TextStyle(fontSize: 18.sp),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(SignUpScreen.routeName);
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 18.sp),
                  ),
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          EdgeInsets.symmetric(vertical: 11.sp)),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.sp)))),
                ),
              ),
            ])),
          ),
        ],
      )),
    );
  }
}
