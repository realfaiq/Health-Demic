import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import '../../screens/Patient/doctor_Confirmation_Screen.dart';

class TabDoctorDetails extends StatefulWidget {
  final String doctorName;
  final String education;
  final String imageURL;
  final String patients;
  final String experience;
  final String fee;

  TabDoctorDetails(this.doctorName, this.education, this.imageURL,
      this.patients, this.experience, this.fee);

  @override
  _TabDoctorDetailsState createState() => _TabDoctorDetailsState();
}

class _TabDoctorDetailsState extends State<TabDoctorDetails> {
  TextEditingController _date = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20.sp),
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.doctorName,
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 50.sp,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor),
                  ),
                  Text(
                    widget.education,
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 30.sp,
                        color: Colors.black),
                  ),
                  Row(
                    children: [
                      Icon(Icons.star),
                      Icon(Icons.star),
                      Icon(Icons.star),
                      Icon(Icons.star),
                      Icon(Icons.star),
                      SizedBox(
                        width: 10.w,
                      ),
                      TextButton(
                        child: Text('Reviews'),
                        onPressed: () {},
                      )
                    ],
                  )
                ],
              ),
            ),
            CircleAvatar(
              radius: 80.0.sp,
              backgroundImage: NetworkImage(
                widget.imageURL,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 20.h,
          mainAxisSpacing: 20.w,
          childAspectRatio: 2 / 1,
          physics:
              NeverScrollableScrollPhysics(), // to disable GridView's scrolling
          shrinkWrap: true, // You won't see infinite size error
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      offset: Offset(0.0, 1),
                      blurRadius: 1.0,
                    )
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(15.r)),
                  color: Theme.of(context).accentColor),
              child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Patients',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 30.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        widget.patients,
                        style: Theme.of(context).textTheme.titleLarge,
                      )
                    ],
                  )),
            ),
            Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      offset: Offset(0.0, 1),
                      blurRadius: 1.0,
                    )
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(15.r)),
                  color: Theme.of(context).accentColor),
              child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Experience',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 30.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        widget.experience,
                        style: Theme.of(context).textTheme.titleLarge,
                      )
                    ],
                  )),
            ),
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.all(Radius.circular(15.r))),
            child: Padding(
              padding: EdgeInsets.all(10.sp),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'About the Doctor',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum',
                      style: TextStyle(fontFamily: 'Roboto', fontSize: 13.sp),
                      textAlign: TextAlign.justify,
                    )
                  ]),
            )),
        SizedBox(
          height: 20.h,
        ),
        GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 20.h,
          mainAxisSpacing: 20.w,
          childAspectRatio: 2 / 1,
          physics:
              NeverScrollableScrollPhysics(), // to disable GridView's scrolling
          shrinkWrap: true, // You won't see infinite size error
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      offset: Offset(0.0, 1),
                      blurRadius: 1.0,
                    )
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(15.r)),
                  color: Theme.of(context).accentColor),
              child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Fee',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 30.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        widget.fee,
                        style: Theme.of(context).textTheme.titleLarge,
                      )
                    ],
                  )),
            ),
            Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      offset: Offset(0.0, 1),
                      blurRadius: 1.0,
                    )
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(15.r)),
                  color: Theme.of(context).accentColor),
              child: Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.sp),
                    child: TextField(
                      controller: _date,
                      decoration: InputDecoration(
                          icon: Icon(
                            Icons.calendar_today_rounded,
                            color: Theme.of(context).primaryColor,
                          ),
                          labelText: 'Select Date'),
                      onTap: () async {
                        DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2101));

                        if (pickedDate != null) {
                          setState(() {
                            _date.text =
                                DateFormat('yyyy-MM-dd').format(pickedDate);
                          });
                        }
                      },
                    ),
                  )),
            ),
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        Container(
          width: double.infinity,
          child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, DoctorConfirmationScreen.routeName,
                  arguments: {
                    'name': widget.doctorName,
                  });
            },
            child: Text(
              'Book Now',
              style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 18.sp,
                  color: Theme.of(context).accentColor),
            ),
            style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(
                    EdgeInsets.symmetric(vertical: 15.sp)),
                foregroundColor: MaterialStateProperty.all<Color>(
                    Theme.of(context).accentColor),
                backgroundColor: MaterialStateProperty.all<Color>(
                    Theme.of(context).primaryColor),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.sp)))),
          ),
        ),
      ],
    );
  }
}
