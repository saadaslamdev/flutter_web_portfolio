import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../data/models/project.dart';

class ProjectImage extends StatelessWidget {
  const ProjectImage({super.key, required this.project});
  final Project project;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 2,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: AppColors.primaryColor.withOpacity(0.5),
              blurRadius: 10,
              spreadRadius: 1.5,
              offset: const Offset(1, 1),
            ),
          ],
        ),
        child: ClipRRect(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          borderRadius: BorderRadius.circular(20),
          child: Container(
            color: project.backgroundColor ?? Colors.white,
            child: project.imageUrl == null
                ? Image.asset(
                    project.imgPath!,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  )
                : CachedNetworkImage(
                    imageUrl: project.imageUrl!,
                    fadeInDuration: const Duration(seconds: 1),
                    width: double.infinity,
                    fit: BoxFit.fitHeight,
                    errorWidget: (context, url, error) {
                      return SizedBox(
                        width: double.infinity,
                        height: double.infinity,
                        child: Icon(
                          color: AppColors.primaryColor,
                          Icons.error,
                          size: 80,
                        ),
                      );
                    },
                  ),
          ),
        ),
      ),
    );
  }
}
