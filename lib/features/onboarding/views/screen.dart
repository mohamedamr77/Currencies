import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _widthAnimation;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );

    _widthAnimation = Tween<double>(
      begin: 0.0,
      end: 3000,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(
          0,
          1,
          curve: Curves.easeInOut,
        ),
      ),
    );

    _scaleAnimation = Tween<double>(
      begin: 0.1,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(
          0.250,
          0.5,
          curve: Curves.ease,
        ),
      ),
    );

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff8160ef),
                  Color(0xff5927ff),
                ],
              ),
            ),
          ),
          ScaleTransition(
            scale: _scaleAnimation,
            child: SvgPicture.asset(
              "assets/images/svg/bride.svg",
              width: _widthAnimation.value,
            ),
          ),
        ],
      ),
    );
  }
}
/*
Center(
            child: Container(
              margin: EdgeInsets.only(top: 100),
              padding: EdgeInsets.all(20),
              height: 130,
              width: 130,// Use animated width
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(100),
                  bottomRight: Radius.circular(100),
                ),
              ),
              child: ScaleTransition(
                scale: _scaleAnimation,
                child: SvgPicture.asset(
                  "assets/images/svg/bride.svg",
                  width: _widthAnimation.value,
                ),
              ),
            ),
          ),
 */