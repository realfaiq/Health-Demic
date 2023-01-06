import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../widgets/Disease_Box.dart';

class MildDiseaseScreen extends StatelessWidget {
  const MildDiseaseScreen({super.key});
  static const routeName = '/mild-disease';

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
        body: ListView(children: [
          SizedBox(
            height: 20.h,
          ),
          Text(
            'Please Select a Disease',
            style: Theme.of(context).textTheme.titleLarge,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 30.h,
          ),
          DiseaseBox('Fever'),
          DiseaseBox('Cough'),
          DiseaseBox('Flu'),
          DiseaseBox('Headache'),
          DiseaseBox('Skin Burn'),
          DiseaseBox('Cuts'),
        ]));
  }
}