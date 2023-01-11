import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../screens/Admin/Manage Admins/edit_Admins_Screen.dart';

class ProfileBox extends StatelessWidget {
  final String imageURL;
  final String name;
  final String age;
  final String email;
  final String password;

  ProfileBox(this.imageURL, this.name, this.age, this.email, this.password);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80.h,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15.r)),
            color: Theme.of(context).primaryColor,
            boxShadow: [
              BoxShadow(
                color: Colors.black54,
                offset: Offset(0.0, 1),
                blurRadius: 1.0,
              )
            ]),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.sp),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                CircleAvatar(
                  radius: 25.0,
                  backgroundImage: NetworkImage(imageURL),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.sp),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 18.sp,
                            color: Theme.of(context).accentColor,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Email: ${email.length > 15 ? email.substring(0, 18) : email}...',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 13.sp,
                            color: Theme.of(context).accentColor),
                      ),
                    ],
                  ),
                )
              ]),
            ),
            Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, EditAdminScreen.routeName,
                            arguments: {
                              'imageURL': imageURL,
                              'name': name,
                              'age': age,
                              'email': email,
                              'password': password
                            });
                      },
                      child: Icon(
                        Icons.edit,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Icon(
                      Icons.delete,
                      color: Colors.white,
                    )
                  ]),
            )
          ]),
        ));
  }
}
