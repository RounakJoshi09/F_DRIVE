import 'package:f_drive/util/Functions.dart';
import 'package:f_drive/util/ScreenColors.dart';
import 'package:f_drive/screens/StorageScreen.dart';
import 'package:f_drive/screens/FilesScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    // TODO: implement initState
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'F Drive',
            style: Functions.textStyle(
                fontSize: 22, color: Colors.black, fontWeight: FontWeight.w700),
          ),
          bottom: TabBar(
              dividerColor: Colors.transparent,
              indicatorColor: Colors.amber,
              automaticIndicatorColorAdjustment: false,
              controller: tabController,
              labelColor: ScreenColors.tabLabelColor,
              unselectedLabelColor: ScreenColors.unselectedTabLabelColor,
              isScrollable: true,
              labelStyle: Functions.textStyle(
                  fontSize: 22, fontWeight: FontWeight.bold),
              unselectedLabelStyle: Functions.textStyle(
                  fontSize: 22, fontWeight: FontWeight.bold),
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: [
                Tab(
                  child: Container(
                    height: 50,
                    width: 150,
                    child: Center(
                      child: Text(
                        'Storage',
                        style: Functions.textStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    height: 50,
                    width: 150,
                    child: Center(
                      child: Text(
                        'Files',
                        style: Functions.textStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
        ),
        body: TabBarView(controller: tabController, children: [
          StorageScreen(),
          FilesScreen(),
        ]));
  }
}
