import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/data/models/skill.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_enums.dart';
import '../../../../core/utils/app_extensions.dart';
import '../../../../core/utils/app_styles.dart';

class SkillItem extends StatefulWidget {
  const SkillItem({super.key, required this.skill});

  final Skill skill;

  @override
  State<SkillItem> createState() => _SkillItemState();
}

class _SkillItemState extends State<SkillItem> {
  Color itemColor = AppColors.white;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8, // Reduced padding
        vertical: 2,  // Reduced vertical padding
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: itemColor,
          width: 2, // Reduce border width
        ),
        borderRadius: BorderRadius.circular(12), // Slightly smaller border radius
      ),
      child: MouseRegion(
        onEnter: _onEnter,
        onExit: _onExit,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 5), // Keep minimal space
            if (context.width > DeviceType.mobile.getMinWidth()) ...[
              FittedBox(
                child: Text(
                  widget.skill.skillName,
                  style: AppStyles.s24,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 5),
              FittedBox(
                child: Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 15.0,  // Reduce spacing
                  runSpacing: 10.0,  // Reduced runSpacing
                  children: widget.skill.skillLogos.map((logo) {
                    return Container(
                      padding: const EdgeInsets.all(2),
                      height: context.width < DeviceType.mobile.getMinWidth() ? 35 : 55,  // Further reduced image size
                      child: Image.asset(
                        logo,
                        fit: BoxFit.contain,
                      ),
                    );
                  }).toList(),
                ),
              ),
            ]
          ],
        ),
      ),
    );
  }

  void _onExit(event) {
    setState(() => itemColor = AppColors.white);
  }

  void _onEnter(event) {
    setState(() => itemColor = AppColors.primaryColor);
  }
}
