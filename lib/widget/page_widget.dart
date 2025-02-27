import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class PageWidget extends StatelessWidget {
  final Widget child;
  const PageWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffF6F9FC),
        body: Stack(
          fit: StackFit.expand,
          children: [
            Positioned(
              right: -50,
              top: -40,
              child: _bulat(color: 0xFF1B4DEA),
            ),
            Positioned(
              left: -66,
              bottom: -72,
              child: _bulat(color: 0xFFF86780),
            ),
            SafeArea(child: child),
          ],
        ));
  }

  Container _bulat({required int color}) {
    return Container(
      width: 161,
      height: 161,
      decoration: BoxDecoration(
          color: Color(color).withOpacity(.3),
          borderRadius: BorderRadius.circular(161 / 2)),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 100,
          sigmaY: 100,
        ),
        child: Container(),
      ),
    );
  }
}
