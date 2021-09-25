import 'package:baby_track/common/values/app_colors.dart';
import 'package:baby_track/pages/home/index.dart';
import 'package:baby_track/pages/music/index.dart';
import 'package:baby_track/pages/profile/index.dart';
import 'package:baby_track/pages/tiny_media/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'IndexController.dart';

const Map<String, String> _bottomNames = {
  'home': '首页',
  'music': '音乐',
  'create_media': '',
  'tiny_video': '小视频',
  'profile': '我的'
};

class IndexPage extends StatefulWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  final List<Widget> _pages = [
    HomePage(),
    MusicPage(),
    Container(),
    TinyMediaPage(),
    ProfilePage(),
  ];

  _bottomNavBarItem() {
    List<BottomNavigationBarItem> items = [];
    _bottomNames.forEach((key, value) {
      var _item = BottomNavigationBarItem(
        icon: Image.asset(
          "assets/images/icons/$key.png",
          width: 24,
          height: 24,
        ),
        activeIcon: Image.asset(
          "assets/images/icons/${key}_active.png",
          width: 24,
          height: 24,
        ),
        label: value,
      );
      items.add(_item);
    });
    return items;
  }

  void onCreateMedia() {
    final IndexController controller = Get.find();
    controller.changCurrentIndex(2);
    print("clicked create media");
  }

  Widget _createMediaButton() {
    return Container(
      width: 44,
      height: 44,
      margin: EdgeInsets.only(top: 56),
      child: FloatingActionButton(
        backgroundColor: AppColors.nav,
        child: Image.asset(
          "assets/images/icons/create_media.png",
        ),
        onPressed: onCreateMedia,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final IndexController controller = Get.find();
    print(
      ' controller.currentIndex ${controller.currentIndex}',
    );
    return Scaffold(
      appBar: AppBar(title: Text(''),),
      body: GetBuilder<IndexController>(
        builder: (_) => Container(
          child: _pages[controller.currentIndex],
        ),
      ),
      bottomNavigationBar: GetBuilder<IndexController>(
        builder: (_) {
          return BottomNavigationBar(
            items: _bottomNavBarItem(),
            currentIndex: controller.currentIndex,
            onTap: (index) {
              print("index $index");
              controller.changCurrentIndex(index);
            },
            type: BottomNavigationBarType.fixed,
          );
        },
      ),
      floatingActionButton: _createMediaButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
