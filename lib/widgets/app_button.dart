
import 'package:ai_models/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  VoidCallback onPressed ;
  VoidCallback? onLongPressed ;
  Color? color;
  String text ;
  double? hight ;
  double? width ;
  AppButton({Key? key,this.hight,this.width, required this.onPressed , required this.text, this.onLongPressed, this.color}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: onPressed,onLongPress: onLongPressed,child: Card(
      color: color ?? mainColor,

      child: Container(
        alignment: Alignment.center,
        width: width ??  210,
        height: hight ?? 40,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: Text(text),),
    ) ,);

  }
}
