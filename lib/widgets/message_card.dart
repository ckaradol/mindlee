import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../theme.dart';

class MessageCard extends StatelessWidget {
  const MessageCard({
    super.key,
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Farklılıklarımı ve beni öne çıkaran benzersiz niteliklerimi kucaklıyorum.',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(
                height: AppSpacer.cardSpace,
              ),
              const Icon(
                Icons.favorite_border,
                color: Color(0xffFFFCFC),
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
                      padding:  EdgeInsets.symmetric(vertical: AppSpacer.threeSpace),
                      child: SvgPicture.asset("assets/share.svg"),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
