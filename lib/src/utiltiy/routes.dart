import 'package:flutter/material.dart';
import 'package:news_app_web_app/src/network/Model/news.model.dart';
import 'package:news_app_web_app/src/screen/Detail/detail_page.dart';
import 'package:news_app_web_app/src/screen/Home/home_page.dart';
import 'package:news_app_web_app/src/utiltiy/Animation/route.animation.dart';

class MyRoute {
  Route<dynamic>? configure(RouteSettings settings) {
    final route = RouteAnimation();

    switch (settings.name) {
      case HomePage.route:
        return route.fadeTransition(
          screen: (ctx, animation, secondaryAnimation) => HomePage(),
        );
      case DetailPage.route:
        return route.fadeTransition(
            screen: (ctx, animation, secondaryAnimation) {
          final Article article = settings.arguments as Article;
          return DetailPage(article: article);
        });

      default:
    }
  }
}

final route = MyRoute();
