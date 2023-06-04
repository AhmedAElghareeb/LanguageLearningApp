import 'package:flutter/material.dart';

class Category extends StatelessWidget
{
  String? text;
  Color? color;
  Function()? onTap;
  Category({
    this.text,
    this.color,
    this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          alignment: Alignment.centerLeft,
          width: double.infinity,
          height: 65,
          color: color,
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              text!,
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}