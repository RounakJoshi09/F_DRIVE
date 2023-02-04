import 'package:f_drive/util/Functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import '../util/ScreenColors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).viewInsets.top + 60),
            child: Image(
              image: Functions.getAssetImage(imageName: 'folder_icon.png'),
              fit: BoxFit.cover,
              height: 200,
              width: 200,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(top: 30, left: 20, right: 20),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.white,
                    spreadRadius: 5,
                  )
                ]),
            child: Column(
              children: [
                Text(
                  'Welcome To F Drive',
                  style: Functions.textStyle(
                      25, ScreenColors.mainTextColor!, FontWeight.w700),
                ),
                Text(
                  'Your One Stop Destination For Sharing Your Files',
                  style: Functions.textStyle(
                      21, ScreenColors.subTextColor!, FontWeight.w700),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
