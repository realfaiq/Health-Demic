import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Doctor Widgets/Practice_Form.dart';

class PracticeBox extends StatelessWidget {
  final String practiceName;

  PracticeBox(this.practiceName);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, PracticeForm.routeName, arguments: {
          'practiceName': practiceName,
        });
      },
      child: Container(
        height: 50.sp,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.all(Radius.circular(15.r)),
        ),
        child: Center(
            child: Text(practiceName,
                style: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold))),
      ),
    );
  }
}
