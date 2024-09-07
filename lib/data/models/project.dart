import 'dart:ui';

class Project {
  final String name;
  final String? imageUrl;
  final String? imgPath;
  final String description;
  final String? githubRepoLink;
  final String? previewLink;
  final String? googlePlay;
  final Color? backgroundColor;

  const Project({
    required this.name,
    this.imageUrl,
    this.imgPath,
    required this.description,
    this.githubRepoLink,
    this.previewLink,
    this.googlePlay,
    this.backgroundColor,
  });
}
