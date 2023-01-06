import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorRecommenderScreen extends StatelessWidget {
  const DoctorRecommenderScreen({super.key});
  static const routeName = '/doctor-recommender';

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
    )));
  }
}
