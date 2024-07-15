import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mindlee2/theme.dart';
import 'package:mindlee2/widgets/app_scaffold.dart';
import 'package:mindlee2/widgets/message_card.dart';

class DailyMessageScreen extends StatefulWidget {
  const DailyMessageScreen({super.key});

  @override
  State<DailyMessageScreen> createState() => _DailyMessageScreenState();
}

class _DailyMessageScreenState extends State<DailyMessageScreen> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      backgroundImage: "assets/daily_background.png",
      child: PageView(
        scrollDirection: Axis.vertical,
        children: [
          Center(
            child: MessageCard(),
          ),
          Center(
            child: MessageCard(),
          ),
          Center(
            child: MessageCard(),
          ),
          Center(
            child: MessageCard(),
          ),
        ],
      ),
    );
  }
}
