import 'package:flutter/material.dart';
import 'package:kzn/data/constant.dart';
import 'package:kzn/data/models/course.dart';

class CourseThumbImg extends StatelessWidget {
  final Course course;
  CourseThumbImg({this.course});
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(appIconAsset,fit: BoxFit.fill),
        CircularProgressIndicator(),
        Image.network(course?.coverImgUrl ?? appIconUrl,fit: BoxFit.fill,),
      ],
    );
  }
}
