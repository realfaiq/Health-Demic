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
                  style: Theme.of(context).textTheme.titleMedium),
              SizedBox(
                height: 13.h,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    hintText: 'Enter your Email',
                    prefixIcon: Icon(
                      Icons.email,
                    )),
                style: Theme.of(context).textTheme.titleMedium,
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
                style: Theme.of(context).textTheme.titleMedium,
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
                style: Theme.of(context).textTheme.titleMedium,
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
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 18.sp,
                        color: Theme.of(context).accentColor),
                  ),
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          EdgeInsets.symmetric(vertical: 15.sp)),
                      foregroundColor: MaterialStateProperty.all<Color>(
                          Theme.of(context).accentColor),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Theme.of(context).primaryColor),
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
