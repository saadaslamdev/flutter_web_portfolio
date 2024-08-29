import 'package:flutter/material.dart';
import 'package:universal_html/html.dart' as html;

import '../../../core/utils/app_assets.dart';
import '../../../core/utils/app_enums.dart';
import '../../../core/utils/app_extensions.dart';
import '../../../core/utils/app_strings.dart';
import '../../../core/utils/app_styles.dart';

class DeveloperNameBtn extends StatelessWidget {
  const DeveloperNameBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        html.window.location.reload();
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 13),
        child: SizedBox(
          width: context.width < DeviceType.ipad.getMaxWidth()
              ? context.width * .5
              : context.width * .12,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FittedBox(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Text(
                      AppStrings.developerNameStyle,
                      textScaler: const TextScaler.linear(1.4),
                      style: AppStyles.italic,
                    ),
                    Text(
                      AppStrings.developerFlutterGeek,
                      textScaler: const TextScaler.linear(0.9),
                      style: AppStyles.italic,
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: Image.asset(
                AppAssets.flutterDevLogo,
                scale: 5,
                gaplessPlayback: true,
              ))
            ],
          ),
        ),
      ),
    );
  }
}