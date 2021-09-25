import 'dart:async';

import 'package:baby_track/common/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TransitPage extends StatefulWidget {
  const TransitPage({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<TransitPage> {
  late Timer _timer;
  int _currentTime = 6;

  @override
  initState() {
    super.initState();
    _timer = Timer.periodic(Duration(milliseconds: 1000,), (timer) {
      setState(() {
        _currentTime --;
      });
      if (_currentTime <= 0) {
        _jumpRootPage();
      }
    });
  }

  _jumpRootPage() {
    _timer.cancel();
    Get.toNamed(AppRoutes.Index);
  }

  _clipButton() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: Container(
        width: 50,
        height: 50,
        color: Colors.black.withOpacity(0.2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '跳过',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
            Text(
              '${_currentTime}s',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/common/page.png',
            fit: BoxFit.cover,
            width: MediaQuery
                .of(context)
                .size
                .width,
            height: MediaQuery
                .of(context)
                .size
                .height,
          ),
          Positioned(
            child: InkWell(
              child: _clipButton(),
              onTap: () {
                _jumpRootPage();
              },
            ),
            top: MediaQuery
                .of(context)
                .padding
                .top,
            right: 10,
          )
        ],
      ),
    );
  }
}
