import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mindlee2/background/fakeData/get_fake_data_bloc.dart';
import 'package:mindlee2/model/fake_data_model.dart';

import '../theme.dart';

class MessageCard extends StatelessWidget {
  final bool messageScreen;
  final FakeDataModel fakeDataModel;

  const MessageCard({
    super.key,
    required this.fakeDataModel,
    this.messageScreen = false,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: AppSpacer.cardSpace),
          padding: EdgeInsets.symmetric(
              horizontal: AppSpacer.cardSpace, vertical: AppSpacer.space),
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.1),
              borderRadius: BorderRadius.circular(12)),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                if (messageScreen != true)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "dear".tr(args: ["${fakeDataModel.name}"]),
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                      Text(
                        fakeDataModel.date ?? "",
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                    ],
                  ),
                SizedBox(
                  height: AppSpacer.threeSpace,
                ),
                Text(
                  fakeDataModel.message ?? "",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                SizedBox(
                  height: AppSpacer.cardSpace,
                ),
                InkWell(
                  onTap: () {
                    if (fakeDataModel.like == true) {
                      context.read<GetFakeDataBloc>().add(LikedEvent(
                          likedItem: FakeDataModel(
                              date: fakeDataModel.date,
                              like: false,
                              message: fakeDataModel.message,
                              name: fakeDataModel.name,
                              id: fakeDataModel.id)));
                    } else {
                      context.read<GetFakeDataBloc>().add(LikedEvent(
                          likedItem: FakeDataModel(
                              date: fakeDataModel.date,
                              like: true,
                              message: fakeDataModel.message,
                              name: fakeDataModel.name,
                              id: fakeDataModel.id)));
                    }
                  },
                  child: Icon(
                    fakeDataModel.like == true
                        ? Icons.favorite
                        : AppAssets.favoryNotSelected,
                    color: fakeDataModel.like == true
                        ? Colors.red
                        : const Color(0xffFFFCFC),
                  ),
                ),
                SizedBox(
                  height: AppSpacer.cardSpace,
                ),
                InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: AppSpacer.threeSpace),
                        child: SvgPicture.asset(AppAssets.shareIcon),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
