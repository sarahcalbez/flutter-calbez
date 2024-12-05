import 'package:flutter/material.dart';

class ProfilePhotoAnimation extends StatefulWidget {
  const ProfilePhotoAnimation({Key? key}) : super(key: key);

  @override
  State<ProfilePhotoAnimation> createState() => _ProfilePhotoAnimationState();
}

class _ProfilePhotoAnimationState extends State<ProfilePhotoAnimation>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<AlignmentGeometry> _alignAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _alignAnimation = Tween<AlignmentGeometry>(
      begin: Alignment.center,
      end: Alignment.bottomRight,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Theme.of(context);

    return SizedBox(
      width: size.width / 4,
      height: size.width / 4,
      child: AlignTransition(
        alignment: _alignAnimation,
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.black.withOpacity(0.8),
            image: const DecorationImage(
              fit: BoxFit.cover,
              alignment: Alignment.bottomLeft,
              image: AssetImage('assets/img/profile.png'),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
