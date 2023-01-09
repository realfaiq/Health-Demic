import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../widgets/Doctor Widgets/Practice_Box.dart';

class PerformPracticeScreen extends StatelessWidget {
  const PerformPracticeScreen({super.key});
  static const routeName = '/perform-practice';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: (AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
              padding: EdgeInsets.all(10.sp),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1517841905240-472988babdf9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
              )),
        ],
      )),
      body: SafeArea(
          child: ListView(
        padding: EdgeInsets.all(20.sp),
        children: [
          Text(
            'Perform Your Practice',
            style: Theme.of(context).textTheme.titleLarge,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20.h,
          ),
          PracticeBox('Prescribe Medicine'),
          SizedBox(
            height: 20.h,
          ),
          PracticeBox('Recommend Lab Test'),
          SizedBox(
            height: 20.h,
          ),
          PracticeBox('Recommend Surgery'),
        ],
      )),
    );
  }
}
