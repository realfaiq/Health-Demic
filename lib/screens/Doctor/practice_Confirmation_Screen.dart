import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PracticeConfirmationScreen extends StatelessWidget {
  const PracticeConfirmationScreen({super.key});
  static const routeName = '/practice-confirmation';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      body: SafeArea(
          child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 40.sp, vertical: 40.sp),
        children: [
          Text(
            'Health Demic Mobile Application',
            style: Theme.of(context).textTheme.titleMedium,
            textAlign: TextAlign.center,
          ),
          Image.asset(
            'assets/images/HD.png',
            height: 200.sp,
          ),
          Row(
            children: [
              Text('Doctor Name'),
              SizedBox(
                width: 10.w,
              ),
              Expanded(
                child: Text(
                  'Dr. Robert Stark',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              )
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              Text('Patient Name:'),
              SizedBox(
                width: 10.w,
              ),
              Expanded(
                child: Text(
                  args['patientName'],
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              )
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              Text('Patient Age:'),
              SizedBox(
                width: 10.w,
              ),
              Expanded(
                child: Text(
                  '${args['age']} yrs',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              )
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              Text('Disease:'),
              SizedBox(
                width: 10.w,
              ),
              Expanded(
                child: Text(
                  args['disease'],
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              )
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              Text('Medication/Lab Test/Surgery:'),
              SizedBox(
                width: 10.w,
              ),
              Expanded(
                child: Text(
                  args['perscription'],
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              )
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              Text('Dosage/Date'),
              SizedBox(
                width: 10.w,
              ),
              Expanded(
                child: Text(
                  args['date/dosage'],
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              )
            ],
          ),
          SizedBox(height: 50.h),
          CircleAvatar(
            radius: 60.0,
            backgroundColor: Colors.blue,
            child: Center(
                child: Icon(
              Icons.done,
              color: Theme.of(context).accentColor,
              size: 60.0.sp,
            )),
          ),
          SizedBox(
            height: 30.sp,
          ),
          TextButton(
            style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(
                    EdgeInsets.symmetric(vertical: 15.sp)),
                foregroundColor: MaterialStateProperty.all<Color>(
                    Theme.of(context).accentColor),
                backgroundColor: MaterialStateProperty.all<Color>(
                    Theme.of(context).primaryColor),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.r)))),
            onPressed: () {},
            child: Text('Save as PDF'),
          )
        ],
      )),
    );
  }
}
