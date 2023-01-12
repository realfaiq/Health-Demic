import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../widgets/Common Widgets/Drawer.dart';

class ViewAdminScreen extends StatelessWidget {
  const ViewAdminScreen({super.key});
  static const routeName = '/view-admin-screen';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
        drawer: MainDrawer(
            'https://images.unsplash.com/photo-1566753323558-f4e0952af115?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=721&q=80',
            'Faiq Ahmad',
            'ahmadfaiq46.com',
            'faiq123',
            'admin'),
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
                                'https://images.unsplash.com/photo-1566753323558-f4e0952af115?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=721&q=80'),
                          )),
                    ))
          ],
        )),
        body: SafeArea(
          child: ListView(children: [
            CircleAvatar(
              radius: 180.0.sp,
              backgroundColor: Colors.blue,
              backgroundImage: NetworkImage(
                args['imageURL'],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            SizedBox(
              height: 80.h,
            ),
            Container(
              padding:
                  EdgeInsets.symmetric(horizontal: 30.0.sp, vertical: 30.sp),
              height: 400.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.r),
                    topRight: Radius.circular(25.r)),
                color: Theme.of(context).primaryColor,
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name',
                      style: TextStyle(
                          fontSize: 25.sp,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).accentColor),
                    ),
                    Text(
                      args['name'],
                      style: TextStyle(
                          fontSize: 18.sp,
                          fontFamily: 'Roboto',
                          color: Theme.of(context).accentColor),
                    ),
                    SizedBox(
                      height: 20.sp,
                    ),
                    Text(
                      'Age',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          color: Theme.of(context).accentColor,
                          fontSize: 25.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5.sp,
                    ),
                    Text(
                      args['age'],
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          color: Theme.of(context).accentColor,
                          fontSize: 18.sp),
                    ),
                    SizedBox(
                      height: 20.sp,
                    ),
                    Text(
                      'Email',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          color: Theme.of(context).accentColor,
                          fontSize: 25.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5.sp,
                    ),
                    Text(
                      args['email'],
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          color: Theme.of(context).accentColor,
                          fontSize: 18.sp),
                    ),
                    SizedBox(
                      height: 20.sp,
                    ),
                    Text(
                      'Password',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          color: Theme.of(context).accentColor,
                          fontSize: 25.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5.sp,
                    ),
                    Text(
                      args['password'],
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        color: Theme.of(context).accentColor,
                        fontSize: 13.sp,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 20.sp,
                    ),
                  ]),
            )
          ]),
        ));
    ;
  }
}
