import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:news_app_web_app/src/screen/Home/Tab/popular.dart';
import 'package:news_app_web_app/src/screen/Home/Tab/social.dart';
import 'package:news_app_web_app/src/screen/Home/Tab/sport.dart';
import 'package:news_app_web_app/src/screen/Home/Tab/trend.dart';
import 'package:news_app_web_app/src/screen/Home/Widget/header.dart';
import 'package:news_app_web_app/src/screen/Home/Widget/search.dart';
import 'package:news_app_web_app/src/screen/Home/Widget/small_tab.dart';

class HomePage extends StatefulWidget {
  static const route = '/home_page';
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Header(header: 'nS News'),
          SearchTile(),
          TabBar(
              automaticIndicatorColorAdjustment: true,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 1,
              controller: _tabController,
              isScrollable: true,
              tabs: [
                Tab(
                    child: SmallTab(
                  tabName: '#Trending',
                )),
                Tab(
                    child: SmallTab(
                  tabName: '#Popular',
                )),
                Tab(
                    child: SmallTab(
                  tabName: '#Social',
                )),
                Tab(
                    child: SmallTab(
                  tabName: '#Sport',
                )),
              ]),
          Expanded(
            child: TabBarView(
                controller: _tabController,
                children: [TrendTab(), PopularTab(), SocialTab(), SportTab()]),
          )
        ]),
      ),
    );
  }
}
