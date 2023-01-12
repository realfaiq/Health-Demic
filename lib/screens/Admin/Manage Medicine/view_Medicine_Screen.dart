import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ViewMedicineScreen extends StatelessWidget {
  const ViewMedicineScreen({super.key});
  static const routeName = '/view-medicine-screen';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map;
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
            args['name'],
            style: Theme.of(context).textTheme.titleLarge,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 50.sp,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'For Disease',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 5.sp,
                ),
                Text(
                  args['diseaseType'],
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 15.sp,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 20.sp,
                ),
                Text(
                  'Age Group Above 15',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 5.sp,
                ),
                Text(
                  args['forAgeGroupAbove15'],
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 15.sp,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 20.sp,
                ),
                Text(
                  'Age Group Below 15',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 5.sp,
                ),
                Text(
                  args['forAgeGroupBelow15'],
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 15.sp,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 20.sp,
                ),
                Text(
                  'Dosage For Adults',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 5.sp,
                ),
                Text(
                  args['forAdultsDosage'],
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 15.sp,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 20.sp,
                ),
                Text(
                  'Dosage For Children',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 5.sp,
                ),
                Text(
                  args['forChildrenDosage'],
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 15.sp,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 20.sp,
                ),
                Text(
                  'Recommended By',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 5.sp,
                ),
                Text(
                  args['recommendedBy'],
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 15.sp,
                      color: Colors.black),
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
