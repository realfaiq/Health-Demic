import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../widgets/Doctor Widgets/Appointment_Box.dart';

class ViewAppointmentsScreen extends StatelessWidget {
  const ViewAppointmentsScreen({super.key});
  static const routeName = '/view-appointments';

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
            'View Your Appointments',
            style: Theme.of(context).textTheme.titleLarge,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20.h,
          ),
          AppointmentBox(
              'Abdur Rehman', 'Rehman Medical Institute', '5 PM', 'Monday'),
          SizedBox(
            height: 20.h,
          ),
          AppointmentBox(
              'Sania Anjum', 'Khyber Teaching Hospital', '6 PM', 'Monday'),
          SizedBox(
            height: 20.h,
          ),
          AppointmentBox(
              'Ashley Gardener', 'Rehman Medical Institute', '2 PM', 'Tuesday'),
          SizedBox(
            height: 20.h,
          ),
          AppointmentBox('Smriti Mandhana', 'Khyber Teaching Hospital', '3 PM',
              'Wednesday'),
        ],
      )),
    );
  }
}
