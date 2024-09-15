import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/utils/app_assets.dart';
import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_enums.dart';
import '../../../core/utils/app_extensions.dart';
import '../../../core/utils/app_strings.dart';
import '../../blocs/home_bloc/home_bloc.dart';
import 'package:universal_html/html.dart' as html;
import 'custom_header_btn.dart';

class VerticalHeaders extends StatelessWidget {
  const VerticalHeaders({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if (context.width > DeviceType.ipad.getMaxWidth()) {
          return const SizedBox();
        }
        return Container(
          width: context.width,
          decoration: BoxDecoration(
              color: AppColors.scaffoldColor,
              border: Border.all(color: AppColors.primaryColor, width: 2),
              borderRadius: BorderRadius.circular(13)),
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            ...List.generate(
              AppBarHeaders.values.length,
              (index) => SizedBox(
                width: context.width,
                child: CustomHeaderBtn(headerIndex: index),
              ),
            ),
            InkWell(
              onTap: () {
                html.window.open(AppStrings.developerResume, '_blank');
              },
              child: Container(
                margin: const EdgeInsets.all(20),
                height: MediaQuery.sizeOf(context).height * 0.05,
                width: MediaQuery.sizeOf(context).width * 0.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: AppColors.primaryColor,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.primaryColor.withOpacity(0.6),
                      blurRadius: 20,
                      spreadRadius: 2.0,
                      offset: const Offset(1, 1),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Resume",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColors.scaffoldColor),
                    ),
                    Flexible(
                      child: Image.asset(
                        AppAssets.resumeGif,
                        gaplessPlayback: true,
                        repeat: ImageRepeat.repeat,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]),
        );
      },
    );
  }
}
