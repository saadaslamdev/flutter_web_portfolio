import 'package:flutter/material.dart';

import '../../data/models/custom_service.dart';
import '../../data/models/project.dart';
import 'app_assets.dart';

abstract class AppConstants {
  static const double appBarHeight = 80;
  static const String appTitle = 'Saad Aslam Portfolio';
  static const List<CustomService> services = [
    CustomService(
      service: 'MOBILE DEVELOPMENT',
      logo: AppAssets.androidLogo,
      description:
          'I am a Junior mobile developer. I have experience using Dart and Flutter Framework.',
    ),
    CustomService(
      service: 'UI & UX DESIGNING',
      logo: AppAssets.uiDesignLogo,
      description:
          'I design beautiful web interfaces with Figma and Adobe XD. I design beautiful web interfaces with Figma and Adobe XD.',
    ),
    CustomService(
      service: 'WEB SCRAPING',
      logo: AppAssets.scrappingLogo,
      description:
          'I can collect content and data from the internet then manipulate and analyze as needed.',
    ),
  ];
  static const List<Project> projects = [
    Project(
      name: 'SPILL',
      imageUrl:
          'https://play-lh.googleusercontent.com/OgPNMYVdHD50oX_oFS5lcM_6dT2g0luRvdwdp5DQ-gU7p-d04wqv94etEwg-kOQhW_E=w240-h480-rw',
      description:
          'SPILL is a social app to create memes, share hot takes, and connect in real-time. Designed for culture-driving communities, it offers live video, audio, and chat experiences.',
      googlePlay:
          'https://play.google.com/store/apps/details?id=com.spill.spill&hl=en',
      backgroundColor: Color(0xFF171717),
    ),
    Project(
      name: 'SOCIAL SAVER',
      imgPath: AppAssets.socialSaverBanner,
      description:
          'Social Saver lets you easily download videos from YouTube, Instagram, TikTok, Facebook, and Snapchat straight to your gallery.',
      githubRepoLink:
          'https://github.com/saadaslamdev/flutter_social_video_downloader',
      googlePlay:
          'https://drive.google.com/drive/folders/1wi7WafUQrGTXZ-Lo4V9xAeLbYoxsls9j?usp=sharing',
    ),
    Project(
      name: 'CHATTER BOX',
      imgPath: AppAssets.chatterBoxBanner,
      description:
          'ChatterBox lets you create groups, manage contacts, and chat in real-time. Connect with ease in a secure, user-friendly app.',
      githubRepoLink: 'https://github.com/saadaslamdev/flutter_chatterbox_app',
      googlePlay:
          'https://drive.google.com/drive/folders/1wi7WafUQrGTXZ-Lo4V9xAeLbYoxsls9j?usp=sharing',
    )
  ];
}
