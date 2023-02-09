import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorConfirmationScreen extends StatelessWidget {
  static const routeName = '/doctor-confirmation';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: (AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 4,
      )),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0.sp),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 150.h,
                width: 150.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).accentColor,
                ),
                child: Icon(Icons.done, size: 100.sp, color: Colors.blue),
                alignment: Alignment.center,
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'Congratulations! ${args['name']} will be at your services',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Roboto',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.sp),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
