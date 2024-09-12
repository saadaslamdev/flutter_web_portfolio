import 'package:flutter/widgets.dart';

const String basePath = 'assets/images';
const String socialBasePath = '$basePath/social_icons';

class PreLoadAssets {
  final List<String> pngAssetsPath = [
    "$socialBasePath/cSharp.png",
    "$socialBasePath/dart.png",
    "$socialBasePath/flutter.png",
    "$socialBasePath/firebase.png",
    "$socialBasePath/flameEngine.png",
    "$socialBasePath/gitBash.png",
    "$socialBasePath/gitHub.png",
    "$socialBasePath/java.png",
    "$socialBasePath/pixiJs.png",
    "$socialBasePath/python.png",
    "$socialBasePath/supabase.png",
    "$socialBasePath/typeScript.png",
    "$socialBasePath/unity.png",

    "$basePath/ChatterBox-Banner.png",
    "$basePath/dev_img.png",
    "$basePath/portfolio_icon.png",
    "$basePath/SocialSaver-Banner.png",
  ];

  Future<void> preLoadLoadingScreenAssets(BuildContext context) async {
    await _preLoadInitialAssets(context, pngAssetsPath);
  }

  Future<void> _preLoadInitialAssets(BuildContext context, List<String> imagePaths) async {
    for (String path in imagePaths) {
      await precacheImage(AssetImage(path), context);
    }
  }
}
