import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../widgets/Common Widgets/Drawer.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class EditPatientProfileScreen extends StatefulWidget {
  static const routeName = '/edit-patient-profile';

  _EditPatientProfileScreenState createState() =>
      _EditPatientProfileScreenState();
}

class _EditPatientProfileScreenState extends State<EditPatientProfileScreen> {
  File? image;

  final ImagePicker picker = ImagePicker();

  Future getImage(ImageSource media) async {
    try {
      var img = await picker.pickImage(source: media);

      if (img == null) return;
      final imageTemporary = File(img.path);
      setState(() {
        image = imageTemporary;
      });
    } on PlatformException catch (e) {
      print('Failed to pick image ${e}');
    }
  }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      drawer: MainDrawer(
          'https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
          'Robert Stark',
          'robertstark@gmail.com',
          'robert123',
          'doctor'),
      appBar: (AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context, true);
            },
            icon: Icon(Icons.arrow_back)),
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Builder(
              builder: (context) => InkWell(
                    onTap: () {
                      Scaffold.of(context).openDrawer();
                    },
                    child: Padding(
                        padding: EdgeInsets.all(10.sp),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
                        )),
                  ))
        ],
      )),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 30.sp, vertical: 20.sp),
        children: [
          Text(
            'Edit Your Profile!',
            style: Theme.of(context).textTheme.titleLarge,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 30.h,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(60.0),
                  child: image != null
                      ? Image.file(
                          image!,
                          fit: BoxFit.cover,
                          height: 60.0,
                          width: 60.0,
                        )
                      : Image.network(
                          args['imageURL'],
                          height: 60.0,
                          width: 60.0,
                          fit: BoxFit.cover,
                        ),
                ),
                SizedBox(
                  width: 20.w,
                ),
                TextButton(
                  onPressed: () {
                    showModalBottomSheet(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25.r),
                                topRight: Radius.circular(25.r))),
                        backgroundColor: Theme.of(context).primaryColor,
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            height: 200.h,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 20.sp, horizontal: 30.sp),
                              child: Column(children: [
                                Text(
                                  'Please Select an Option',
                                  style: TextStyle(
                                      color: Theme.of(context).accentColor,
                                      fontFamily: 'Roboto',
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  height: 30.h,
                                ),
                                Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      InkWell(
                                          onTap: () {
                                            getImage(ImageSource.camera);
                                          },
                                          child: Column(
                                            children: [
                                              CircleAvatar(
                                                radius: 30.0,
                                                backgroundColor:
                                                    Theme.of(context)
                                                        .accentColor,
                                                child: Center(
                                                    child: Icon(
                                                  Icons.camera,
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                )),
                                              ),
                                              SizedBox(
                                                height: 10.h,
                                              ),
                                              Text(
                                                'Camera',
                                                style: TextStyle(
                                                    color: Theme.of(context)
                                                        .accentColor,
                                                    fontFamily: 'Roboto'),
                                              )
                                            ],
                                          )),
                                      SizedBox(
                                        width: 20.w,
                                      ),
                                      InkWell(
                                          onTap: () {
                                            getImage(ImageSource.gallery);
                                          },
                                          child: Column(
                                            children: [
                                              CircleAvatar(
                                                radius: 30.0,
                                                backgroundColor:
                                                    Theme.of(context)
                                                        .accentColor,
                                                child: Center(
                                                    child: Icon(
                                                  Icons.image,
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                )),
                                              ),
                                              SizedBox(
                                                height: 10.h,
                                              ),
                                              Text(
                                                'Gallery',
                                                style: TextStyle(
                                                    color: Theme.of(context)
                                                        .accentColor,
                                                    fontFamily: 'Roboto'),
                                              )
                                            ],
                                          ))
                                    ]),
                              ]),
                            ),
                          );
                        });
                  },
                  child: Text('Choose Photo'),
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          EdgeInsets.symmetric(
                              vertical: 15.sp, horizontal: 25.sp)),
                      foregroundColor: MaterialStateProperty.all<Color>(
                          Theme.of(context).accentColor),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Theme.of(context).primaryColor),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.sp)))),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Form(
            child: Column(children: [
              TextFormField(
                initialValue: args['name'],
                decoration: InputDecoration(
                    labelText: 'Full Name', prefixIcon: Icon(Icons.person)),
              ),
              TextFormField(
                initialValue: args['age'],
                decoration: InputDecoration(
                    labelText: 'Age', prefixIcon: Icon(Icons.numbers)),
              ),
              TextFormField(
                initialValue: args['medicalCondition'],
                decoration: InputDecoration(
                    labelText: 'Medical Condition',
                    prefixIcon: Icon(Icons.medical_information_rounded)),
              ),
              TextFormField(
                initialValue: args['medications'],
                decoration: InputDecoration(
                    labelText: 'Medications',
                    prefixIcon: Icon(Icons.medication)),
              ),
              TextFormField(
                initialValue: args['doctor'],
                decoration: InputDecoration(
                    labelText: 'Doctor',
                    prefixIcon: Icon(Icons.medical_services)),
              ),
              TextFormField(
                initialValue: args['medicalNotes'],
                decoration: InputDecoration(
                    labelText: 'Medical Notes', prefixIcon: Icon(Icons.notes)),
                keyboardType: TextInputType.multiline,
                minLines: 1,
                maxLines: 3,
                maxLength: 250,
                maxLengthEnforcement: MaxLengthEnforcement.enforced,
              ),
              TextFormField(
                initialValue: args['lastVisitDate'],
                decoration: InputDecoration(
                    labelText: 'Last Visit',
                    prefixIcon: Icon(Icons.calendar_month)),
              ),
              TextFormField(
                initialValue: args['nextVisitDate'],
                decoration: InputDecoration(
                    labelText: 'Next Visit',
                    prefixIcon: Icon(Icons.calendar_month)),
              ),
              SizedBox(
                height: 30.h,
              ),
              TextButton(
                onPressed: () {},
                child: Text('Save'),
                style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        EdgeInsets.symmetric(
                            vertical: 15.sp, horizontal: 30.sp)),
                    foregroundColor: MaterialStateProperty.all<Color>(
                        Theme.of(context).accentColor),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Theme.of(context).primaryColor),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.sp)))),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
