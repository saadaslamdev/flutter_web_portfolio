import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/data/models/skill.dart';

import '../../data/models/custom_service.dart';
import '../../data/models/project.dart';
import 'app_assets.dart';

abstract class AppConstants {
  static const double appBarHeight = 80;
  static const String appTitle = 'Saad Aslam Portfolio';
  static const List<Skill> skills = [
    Skill(
      skillName: 'FRAMEWORKS | TECHNOLOGIES',
      skillLogos: [
        AppAssets.flutterLogo,
        AppAssets.unityLogo,
        AppAssets.flameEngineLogo,
        AppAssets.pixiJsLogo,
      ],
    ),
    Skill(
      skillName: 'PROGRAMMING LANGUAGES',
      skillLogos: [
        AppAssets.dartLogo,
        AppAssets.cSharpLogo,
        AppAssets.typeScriptLogo,
        AppAssets.pythonLogo,
      ],
    ),
    Skill(
      skillName: 'SERVERS | DATABASES',
      skillLogos: [
        AppAssets.firebaseLogo,
        AppAssets.supabaseLogo,
      ],
    ),
    Skill(
      skillName: 'VERSION CONTROL',
      skillLogos: [
        AppAssets.gitHubLogo,
        AppAssets.gitBashLogo,
      ],
    )
  ];

  static const List<CustomService> services = [
    CustomService(
      service: 'MOBILE APP DEVELOPMENT',
      logo: AppAssets.androidLogo,
      description:
          'As a Senior Mobile Developer, I have deep expertise in Dart and Flutter, specializing in building high-performance, responsive mobile apps.',
    ),
    CustomService(
      service: 'RESPONSIVNESS',
      logo: AppAssets.uiDesignLogo,
      description:
          'I ensure that mobile applications are highly responsive, delivering smooth and seamless interactions across a wide range of devices and screen sizes. With a focus on optimizing performance, I create apps that adapt effortlessly, providing users with fast, fluid, and consistent experiences.',
    ),
    CustomService(
      service: 'MOBILE GAME DEVELOPMENT',
      logo: AppAssets.scrappingLogo,
      description:
          'I develop immersive and interactive games using Unity, delivering engaging experiences with attention to detail and creativity.',
    ),
  ];
  static const List<Project> projects = [
    Project(
      name: 'SPILL (50K+ Downloads)',
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
    ),
    Project(
      name: 'CHATTER BOX',
      imgPath: AppAssets.chatterBoxBanner,
      description:
          'ChatterBox lets you create groups, manage contacts, and chat in real-time. Connect with ease in a secure, user-friendly app.',
      githubRepoLink: 'https://github.com/saadaslamdev/flutter_chatterbox_app',
    ),
    Project(
      name: 'El Patrón - Idle Cartel (1M+ Downloads)',
      imgPath: AppAssets.elPatronBanner,
      description:
          'El Patrón: Idle Cartel” is an exciting idle game where you build your empire in the dangerous world of cartels. Forge alliances, face rivals, and expand your operations to become the ultimate underground tycoon. With a gripping storyline and intense challenges, rise to the top of the cartel world.',
      googlePlay:
          'https://play.google.com/store/apps/details?id=com.tiltingpoint.bigwolf.narcosfactory&hl=en',
    ),
    Project(
      name: 'Narcos: Idle Empire of Crime (50K+ Downloads)',
      imgPath: AppAssets.narcosBanner,
      description:
          'Narcos: Idle Empire” is a thrilling idle game set in Medellín’s drug wars. Build your empire, make strategic choices, and outmaneuver rival cartels to become the top kingpin. Featuring original storylines, familiar characters, and challenging gameplay, reshape the history of the Colombian drug trade.',
      googlePlay:
          'https://play.google.com/store/apps/details?id=com.bigwolf.narcos.idle.empire&hl=en',
    ),
    Project(
      name: 'High Tide: Weed Game (50K+ Downloads)',
      imgPath: AppAssets.hightideBanner,
      description:
          'High Tide: Weed Game turns a 80s surf shop into a top underground grow op. Build, upgrade, and hire Beach Bums to rake in cash. Enjoy stoner comedy, surf, and unlock epic rewards in this nostalgic idle game!',
      googlePlay:
          'https://play.google.com/store/apps/details?id=com.hazyarts.weed.hightide&hl=en',
    )
  ];
}
