import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../widgets/Mobile_Doctor_Details.dart';
import '../../widgets/Tab_Doctor_Details.dart';

class DoctorDetailsScreen extends StatelessWidget {
  const DoctorDetailsScreen({super.key});
  static const routeName = '/doctor-details';

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
                ))
          ],
        )),
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 500) {
              return MobileDoctorDetails(
                  args['doctorName'],
                  args['education'],
                  args['imageURL'],
                  args['patients'],
                  args['experience'],
                  args['Fee']);
            } else {
              return TabDoctorDetails(
                  args['doctorName'],
                  args['education'],
                  args['imageURL'],
                  args['patients'],
                  args['experience'],
                  args['Fee']);
            }
          },
        ));
  }
}
