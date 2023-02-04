import 'package:f_drive/controller/auth_controller.dart';
import 'package:f_drive/util/Functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import '../util/ScreenColors.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.green, Colors.white])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
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
            const Spacer(),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(
                  top: 30, left: 20, right: 20, bottom: 300),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40), boxShadow: const []),
              child: Column(
                children: [
                  Text(
                    'Welcome To F Drive',
                    style: Functions.textStyle(
                        fontSize: 25,
                        color: ScreenColors.mainTextColor!,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    'One Stop Destination',
                    style: Functions.textStyle(
                        fontSize: 21,
                        color: ScreenColors.subTextColor!,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    'For Sharing Your Files',
                    style: Functions.textStyle(
                        fontSize: 21,
                        color: ScreenColors.subTextColor!,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () => Get.find<AuthController>().login(),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        color: ScreenColors.letsGoColor,
                      ),
                      height: 50,
                      width: MediaQuery.of(context).size.width / 1.7,
                      child: Center(
                        child: Text(
                          'Let\'s Go',
                          style: Functions.textStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
