import 'package:calbez/app/sections/home/widgets/animation_text.dart';
import 'package:calbez/core/animations/entrance_fader.dart';
import 'package:calbez/core/res/responsive_size.dart';
import 'package:sizer/sizer.dart';
import 'package:universal_html/html.dart' as html;
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:calbez/app/widgets/color_change_btn.dart';
import 'package:calbez/changes/links.dart';
import 'package:calbez/changes/strings.dart';
import 'package:calbez/core/configs/configs.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return SizedBox(
      height: 80.h,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 10.h),
                width: 55.w,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                              color: Colors.tealAccent,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                                topRight: Radius.circular(20.0),
                                bottomLeft: Radius.circular(20.0),
                              )),
                          padding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                          child: const Text(
                            "Hello! I'm",
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Space.y(0.5.w)!,
                    Text(yourname,
                        style: const TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w600,
                        )),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text("A ",
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w400,
                            )),
                        AnimatedTextKit(
                          isRepeatingAnimation: true,
                          repeatForever: true,
                          animatedTexts: desktopList,
                        ),
                      ],
                    ),
                    Space.y(1.5.w)!,
                    Padding(
                      padding: EdgeInsets.only(right: 10.w),
                      child: Text(miniDescription,
                          style: TextStyle(
                            fontSize: isFontSize(context, 20),
                            fontWeight: FontWeight.w400,
                            color: theme.textColor.withOpacity(0.6),
                          )),
                    ),
                    Space.y(3.w)!,
                    ColorChageButton(
                      text: 'resume',
                      onTap: () {
                        html.window.open(resume, "pdf");
                      },
                    ),
                  ],
                ),
              ),
            ),
            const EntranceFader(
              offset: Offset(0, 0),
              delay: Duration(seconds: 1),
              duration: Duration(milliseconds: 800),
              child: CircleAvatar(
                radius: 146.0,
                backgroundColor: Colors.tealAccent,
                child: CircleAvatar(
                  radius: 143.0,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius: 140.0,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage("assets/img/profile.png"),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
