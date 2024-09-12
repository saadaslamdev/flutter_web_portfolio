import 'package:flutter/material.dart';

import '../../../../core/utils/app_constants.dart';
import '../../../../core/utils/app_enums.dart';
import '../../../../core/utils/app_extensions.dart';
import 'skill_item.dart';

class SkillItemGrid extends StatelessWidget {
  const SkillItemGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: _getCrossAxisCount(context.width),
        crossAxisSpacing: 16,
        childAspectRatio: _getAspectRatio(context.width),
        mainAxisSpacing: 16,
      ),
      itemBuilder: (context, index) {
        return SkillItem(
          skill: AppConstants.skills[index],
        );
      },
      itemCount: AppConstants.skills.length,
    );
  }

  int _getCrossAxisCount(double deviceWidth) {
    int numOfSkills = AppConstants.skills.length;
    if (deviceWidth < DeviceType.mobile.getMaxWidth()) {
      return 1;
    } else if (deviceWidth < DeviceType.ipad.getMaxWidth()) {
      return 2;
    } else if (deviceWidth < DeviceType.smallScreenLaptop.getMaxWidth()) {
      return 3;
    } else {
      return numOfSkills > 4 ? 4 : numOfSkills;
    }
  }

  double _getAspectRatio(double deviceWidth) {
    if (deviceWidth < DeviceType.mobile.getMinWidth()) {
      return 1.2; // Increase to reduce height
    } else if (deviceWidth < DeviceType.ipad.getMinWidth()) {
      return 1.5; // Adjusted ratio for smaller screens
    } else if (deviceWidth < DeviceType.smallScreenLaptop.getMaxWidth()) {
      return 1.8; // Higher ratio for medium screens
    } else {
      return 2.0; // Larger ratio for bigger screens to compress height
    }
  }

}
