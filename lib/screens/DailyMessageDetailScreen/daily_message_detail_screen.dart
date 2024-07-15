import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mindlee2/theme.dart';
import 'package:mindlee2/widgets/app_scaffold.dart';
import 'package:mindlee2/widgets/message_card.dart';

class DailyMessageDetailScreen extends StatefulWidget {
  const DailyMessageDetailScreen({super.key});

  @override
  State<DailyMessageDetailScreen> createState() => _DailyMessageDetailScreenState();
}

class _DailyMessageDetailScreenState extends State<DailyMessageDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      backgroundImage: "assets/detail_screen.png",
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
