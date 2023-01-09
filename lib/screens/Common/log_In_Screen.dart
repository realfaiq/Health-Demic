import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import './sign_up_Screen.dart';
import '../Patient/patient_Home_Screen.dart';
import '../Doctor/doctor_Home_Screen.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final _passwordFoucsNode = FocusNode();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    _passwordFoucsNode.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

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
              padding: EdgeInsets.symmetric(horizontal: 57.h, vertical: 30.h),
              child: Form(
                  child: Column(children: [
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Enter your Email',
                    prefixIcon: Icon(Icons.email),
                  ),
                  textInputAction: TextInputAction.next,
                  onFieldSubmitted: (_) {
                    FocusScope.of(context).requestFocus(_passwordFoucsNode);
                  },
                  controller: emailController,
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
                  focusNode: _passwordFoucsNode,
                  controller: passwordController,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(
                  height: 15.h,
                ),
                Container(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {
                      if (emailController.text == 'emilyrose@gmail.com' &&
                          passwordController.text == 'emily123') {
                        Navigator.pushNamed(
                            context, PatientHomeScreen.routeName);
                      } else if (emailController.text ==
                              'robertstark@gmail.com' &&
                          passwordController.text == 'robert123') {
                        Navigator.pushNamed(
                            context, DoctorHomeScreen.routeName);
                      } else if (emailController.text ==
                              'ahmadfaiq46@gmail.com' &&
                          passwordController.text == 'faiq123') {}
                    },
                    child: Text(
                      'Log In',
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
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(25.sp)))),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgetten Password?',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    style: ButtonStyle(
                      overlayColor: MaterialStateColor.resolveWith(
                          (states) => Colors.transparent),
                    ),
                  ),
                ),
              ])),
            ),
            SizedBox(
              height: 180.h,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t have an Account?',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                TextButton(
                  onPressed: () {
                    showModalBottomSheet(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25.r),
                                topRight: Radius.circular(25.r))),
                        backgroundColor: Theme.of(context).primaryColor,
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            height: 300.h,
                            padding: EdgeInsets.all(50.sp),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .pushNamed(SignUpScreen.routeName);
                                    },
                                    child: Text(
                                      'Sign Up as Patient',
                                      style: TextStyle(
                                          fontSize: 25.sp,
                                          color: Theme.of(context).accentColor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    style: TextButton.styleFrom(
                                      minimumSize: Size.zero,
                                      padding: EdgeInsets.all(0),
                                      tapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                    ),
                                  ),
                                  Divider(
                                    color: Theme.of(context).accentColor,
                                  ),
                                  Text(
                                    'Cannot Sign Up as Doctor',
                                    style: TextStyle(
                                        color: Theme.of(context).accentColor,
                                        fontSize: 25.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10.sp),
                                    child: Text(
                                      'Because of Authenticity reasons we prefer that doctors do not Sign Up directly. In order to Sign Up as Doctor. Contact us at ahmadfaiq46@gmail.com or abdurrehman1112@gmail.com. Our team will reach to you ASAP!',
                                      style: TextStyle(
                                          color: Theme.of(context).accentColor,
                                          fontSize: 15.sp),
                                    ),
                                  )
                                ]),
                          );
                        });
                  },
                  child: Text(
                    'Sign Up',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  style: ButtonStyle(
                    overlayColor: MaterialStateColor.resolveWith(
                        (states) => Colors.transparent),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
