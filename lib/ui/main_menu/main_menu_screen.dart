import 'package:emusic/routes.dart';
import 'package:emusic/ui/main_menu/vertical_tab.dart';
import 'package:emusic/ui/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainMenuScreen extends StatelessWidget {
  const MainMenuScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              child: VerticalTabs(
                tabsWidth: ScreenUtil().setWidth(150),
                direction: TextDirection.rtl,
                tabTextStyle: BaseTheme.bottomBarTextStyle,
                selectedTabTextStyle: BaseTheme.bottomBarTextStyle,
                tabs: <Tab>[
                  Tab(text: '갤러리', icon: Icon(Icons.photo)),
                  Tab(text: '카메라', icon: Icon(Icons.camera)),
                  Tab(text: '편집', icon: Icon(Icons.edit)),
                  Tab(text: '다음', icon: Icon(Icons.arrow_back_ios)),
                ],
                contents: <Widget>[
                  Builder(
                    builder: Routes.routes[Routes.gallery],
                  ),
                  Builder(
                    builder: Routes.routes[Routes.camera],
                  ),
                  Builder(
                    builder: Routes.routes[Routes.editing],
                  ),
                  Container(
                      color: Colors.black12,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemExtent: 100,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.all(10),
                              color: Colors.white30,
                            );
                          })),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}