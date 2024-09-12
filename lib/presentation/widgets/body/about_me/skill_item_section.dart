import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/presentation/widgets/body/about_me/skill_item_grid.dart';

import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_styles.dart';

class SkillSection extends StatelessWidget {
  const SkillSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          child: Text(
            AppStrings.mySkillSet,
            style: AppStyles.s32,
          ),
        ),
        const SizedBox(height: 32),
        const SkillItemGrid(),
      ],
    );
  }
}
