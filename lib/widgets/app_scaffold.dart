import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../theme.dart';

class AppScaffold extends StatelessWidget {
  final String backgroundImage;
  final Widget child;

  const AppScaffold(
      {super.key, required this.backgroundImage, required this.child});

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
          padding: EdgeInsets.symmetric(horizontal: AppSpacer.space,vertical: AppSpacer.threeSpace),
          child: Row(
            children: [
              Expanded(
                  child: ElevatedButton(
                onPressed: () {},
                child: const Text("Kategoriler"),
              )),
              Container(
                margin:  EdgeInsets.only(left: AppSpacer.threeSpace),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color:
                        Theme.of(context).buttonTheme.colorScheme?.background),
                padding: const EdgeInsets.all(6),
                child: SvgPicture.asset("assets/edit_icon.svg"),
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
                    color:  Theme.of(context).dividerColor,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
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
                    child: SvgPicture.asset("assets/back_icon.svg"),
                  ),
                  Text(
                    "Günlük Mesaj",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Container(
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
                    child: const Icon(
                      Icons.more_vert,

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
