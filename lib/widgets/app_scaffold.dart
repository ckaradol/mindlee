import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../theme.dart';

class AppScaffold extends StatelessWidget {
  final bool onBack;
  final String bottomButtonText;
  final Function() bottomButtonOnTap;
  final String backgroundImage;
  final Widget child;

  const AppScaffold(
      {super.key, required this.backgroundImage, required this.child, required this.bottomButtonText, required this.bottomButtonOnTap,this.onBack=false});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            backgroundImage,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: AppSpacer.space, vertical: AppSpacer.threeSpace),
          child: Row(
            children: [
              Expanded(
                  child: ElevatedButton(
                onPressed: bottomButtonOnTap,
                child: Text(bottomButtonText),
              )),
              Container(
                margin: EdgeInsets.only(left: AppSpacer.threeSpace),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color:
                        Theme.of(context).buttonTheme.colorScheme?.background),
                padding: const EdgeInsets.all(6),
                child: SvgPicture.asset(AppAssets.editIcon),
              ),
            ],
          ),
        ),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: SafeArea(
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Theme.of(context).dividerColor,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap:onBack? (){
                      Navigator.pop(context);
                    }:null,
                    child: Container(
                      margin: EdgeInsets.symmetric(
                          vertical: AppSpacer.secondSpace,
                          horizontal: AppSpacer.space),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Theme.of(context)
                              .buttonTheme
                              .colorScheme
                              ?.background),
                      padding: const EdgeInsets.all(6),
                      child: SvgPicture.asset(AppAssets.backIcon),
                    ),
                  ),
                  Text(
                    "dailyMessage".tr(),
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: AppSpacer.secondSpace,
                        horizontal: AppSpacer.space),
                    child: MenuAnchor(
                      builder:
                          (BuildContext context, MenuController controller, Widget? child) {
                        return  InkWell(
                          onTap: () {
                            if (controller.isOpen) {
                              controller.close();
                            } else {
                              controller.open();
                            }
                          },
                          child: Container(

                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Theme.of(context)
                                    .buttonTheme
                                    .colorScheme
                                    ?.background),
                            padding: const EdgeInsets.all(6),
                            child: Icon(AppAssets.iconMenu),
                          ),
                        );
                      },
                      menuChildren:[Container(
                        width: 100,
                        height: 100,
                      )],
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
        body: child,
      ),
    );
  }
}
