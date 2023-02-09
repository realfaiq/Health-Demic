import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_demic/widgets/Common%20Widgets/custom_Snackbar.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});
  static const routeName = '/forget-password';

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  final TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
          child: Scaffold(
        body: ListView(
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 50.sp),
          children: [
            Image.asset('assets/images/HD.png'),
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  hintText: 'Enter Your Email',
                  prefixIcon: Icon(Icons.email),
                ),
                style: TextStyle(fontSize: 17.sp),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  customSnackBar('Email Sent');
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(25.r)),
                  ),
                  child: Center(
                      child: Text(
                    'Send Email',
                    style: TextStyle(color: Colors.white, fontSize: 17.sp),
                  )),
                ),
              )
            ]),
          ],
        ),
      )),
    );
  }
}
