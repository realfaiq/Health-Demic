import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MedicineRecommendationScreen extends StatelessWidget {
  const MedicineRecommendationScreen({super.key});
  static const routeName = '/medicine-recommendation-screen';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        elevation: 0,
        actions: [
          Padding(
              padding: EdgeInsets.all(10.sp),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1517841905240-472988babdf9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
              )),
        ],
      ),
      body: SafeArea(
          child: ListView(
        children: [
          Center(
              child: Container(
            color: Colors.blue,
            height: 350.sp,
            width: double.infinity,
            child: Icon(
              Icons.medical_information,
              size: 350.0.sp,
              color: Colors.white,
            ),
          )),
          Container(
            height: 550.sp,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.r),
                    topRight: Radius.circular(25.r))),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 120.sp, vertical: 10.sp),
                child: Divider(
                  color: Colors.black,
                ),
              ),
              Container(
                padding:
                    EdgeInsets.symmetric(horizontal: 30.sp, vertical: 10.sp),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        args['medicationName'],
                        // 'Panadol',
                        style: TextStyle(
                            fontSize: 25.sp,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20.sp,
                      ),
                      Text(
                        'Conditions',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            color: Theme.of(context).primaryColor,
                            fontSize: 25.sp),
                      ),
                      SizedBox(
                        height: 5.sp,
                      ),
                      Text(
                        args['diseaseName'],
                        // 'Fever',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            color: Colors.black,
                            fontSize: 18.sp),
                      ),
                      SizedBox(
                        height: 20.sp,
                      ),
                      Text(
                        'Age Group',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            color: Theme.of(context).primaryColor,
                            fontSize: 25.sp),
                      ),
                      SizedBox(
                        height: 5.sp,
                      ),
                      Text(
                        args['above15AgeGroup'],
                        // '1 tea spoon',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            color: Colors.black,
                            fontSize: 18.sp),
                      ),
                      Text(
                        args['below15AgeGroup'],
                        // '2 tea spoon',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            color: Colors.black,
                            fontSize: 18.sp),
                      ),
                      SizedBox(
                        height: 20.sp,
                      ),
                      Text(
                        'Dosage',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            color: Theme.of(context).primaryColor,
                            fontSize: 25.sp),
                      ),
                      SizedBox(
                        height: 5.sp,
                      ),
                      Text(
                        args['adultsDosage'],
                        // '4 tea spoon',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            color: Colors.black,
                            fontSize: 18.sp),
                      ),
                      Text(
                        args['childrenDosage'],
                        // '2 tea spoon',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            color: Colors.black,
                            fontSize: 18.sp),
                      ),
                      SizedBox(
                        height: 20.sp,
                      ),
                      Text(
                        'Recommended By',
                        // 'Doctor Khan',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            color: Theme.of(context).primaryColor,
                            fontSize: 25.sp),
                      ),
                      SizedBox(
                        height: 5.sp,
                      ),
                      Text(
                        args['recommendedBy'],
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            color: Colors.black,
                            fontSize: 18.sp),
                      )
                    ]),
              )
            ]),
          ),
        ],
      )),
    );
  }
}
