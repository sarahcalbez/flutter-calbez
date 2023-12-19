import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:calbez/app/widgets/color_change_btn.dart';
import 'package:calbez/changes/links.dart';
import 'package:calbez/changes/strings.dart';
import 'package:calbez/core/animations/entrance_fader.dart';
import 'package:calbez/core/configs/configs.dart';
import 'package:calbez/core/res/responsive_size.dart';
import 'package:sizer/sizer.dart';
import 'package:universal_html/html.dart' as html;

import 'widgets/animation_text.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Padding(
      padding: EdgeInsets.only(left: 10.w, top: 15.h, right: 10.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
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
              const Spacer(),
              const Expanded(
                child: EntranceFader(
                  offset: Offset(5, 5),
                  delay: Duration(seconds: 1),
                  duration: Duration(milliseconds: 800),
                  child: CircleAvatar(
                    radius: 55.0,
                    backgroundColor: Colors.tealAccent,
                    child: CircleAvatar(
                      radius: 52.0,
                      backgroundColor: Colors.black,
                      child: CircleAvatar(
                        radius: 50.0,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage("assets/img/profile.png"),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: Text(
                  yourname,
                  style: TextStyle(
                    fontSize: isFontSize(context, 28),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              // const Expanded(
              //   child: EntranceFader(
              //     offset: Offset(5, 5),
              //     delay: Duration(seconds: 1),
              //     duration: Duration(milliseconds: 800),
              //     child: CircleAvatar(
              //       radius: 55.0,
              //       backgroundColor: Colors.tealAccent,
              //       child: CircleAvatar(
              //         radius: 52.0,
              //         backgroundColor: Colors.black,
              //         child: CircleAvatar(
              //           radius: 50.0,
              //           backgroundColor: Colors.white,
              //           backgroundImage: AssetImage("assets/img/profile.png"),
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
          Row(
            children: [
              Text(
                "A ",
                style: TextStyle(
                  fontSize: isFontSize(context, 18),
                  fontWeight: FontWeight.w400,
                ),
              ),
              AnimatedTextKit(
                animatedTexts: mobileList,
                repeatForever: true,
                isRepeatingAnimation: true,
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 5.w),
                child: Text(shorterDescription,
                    style: TextStyle(
                      fontSize: isFontSize(context, 11),
                      color: theme.textColor.withOpacity(0.6),
                    )),
              ),
            ],
          ),
          Space.y(5.w)!,
          Row(
            children: [
              ColorChageButton(
                text: 'resume',
                onTap: () {
                  html.window.open(resume, "pdf");
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
