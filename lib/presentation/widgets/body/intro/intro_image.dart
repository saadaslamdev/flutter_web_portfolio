import 'package:flutter/material.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_extensions.dart';
import '../../../../data/models/responsive_size.dart';

class IntroImage extends StatelessWidget {
  const IntroImage({super.key});

  @override
  Widget build(BuildContext context) {
    final responsiveSize = ResponsiveSize(
      deviceWidth: context.width,
      mobileSize: context.width * .55,
      ipadSize: context.width * .36,
      smallScreenSize: context.width * .26,
    );

    return Align(
      alignment: Alignment.center,
      child: Container(
        width: responsiveSize.getSize(),
        height: responsiveSize.getSize(),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              blurRadius: 20,
              spreadRadius: 2,
              offset: const Offset(1, 1),
            ),
          ],
        ),
        child: Image.asset(
          AppAssets.devImg,
          width: responsiveSize.getSize(),
          height: responsiveSize.getSize(),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
