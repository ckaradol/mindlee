import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mindlee2/theme.dart';
import 'package:mindlee2/widgets/app_scaffold.dart';
import 'package:mindlee2/widgets/message_card.dart';

import '../../background/fakeData/get_fake_data_bloc.dart';

class DailyMessageScreen extends StatefulWidget {
  const DailyMessageScreen({super.key});

  @override
  State<DailyMessageScreen> createState() => _DailyMessageScreenState();
}

class _DailyMessageScreenState extends State<DailyMessageScreen> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      backgroundImage: AppAssets.dailyBack,
      bottomButtonText:"categories".tr(),
      onBack: true,
      bottomButtonOnTap: () {  },
      child:  BlocBuilder<GetFakeDataBloc, GetFakeDataState>(
        builder: (context, state) {
          if(state is GetFakeDataLoad) {
            return PageView(
              scrollDirection: Axis.vertical,
              children: [
                for(var data in state.fakeData)
                  Center(
                    child: MessageCard(fakeDataModel: data,messageScreen: true,),
                  ),

              ],
            );
          }else{
            return const Center(child: CupertinoActivityIndicator(),);
          }
        },
      ),
    );
  }
}
