class Constant {
  //Api Related

  String get baseUrl => "https://newsapi.org/v2";
  final Map<String, dynamic> params = {
    "country": "in",
    "apiKey": "554402112ea748dda265c2bb755d77f0"
  };
  String get apiKey => "554402112ea748dda265c2bb755d77f0";
  //image tag
  String get heroTag => "oneByone";
  //theme
  // ThemeMode getThemeMode(String type) {
  //   ThemeMode themeMode = ThemeMode.system;
  //   switch (type) {
  //     case "System":
  //       themeMode = ThemeMode.system;
  //       break;
  //     case "Dark":
  //       themeMode = ThemeMode.dark;
  //       break;
  //     case "Light":
  //       themeMode = ThemeMode.light;
  //       break;
  //   }
  //   return themeMode;
  // }
}

final constant = Constant();
