import 'package:flutter/material.dart';
import 'package:geekbang_simple/desktop/components/search_bar/search_bar.dart';
import 'package:geekbang_simple/desktop/components/sidebar/sidebar.dart';
import 'package:geekbang_simple/desktop/layout/default_page.dart';
import 'package:geekbang_simple/desktop/routes/home/download_assets/download_assets.dart';
import 'package:geekbang_simple/desktop/routes/home/main_home/main_home.dart';

final configs = [
  {"icon": Icons.home_filled, "page": MainHome()},
  {"icon": Icons.download, "page": DownloadAssets()}
];

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final sidebarConfig = configs
      .map((i) => SideBarIconConfig(icon: i["icon"] as dynamic))
      .toList();
  final pages = configs.map((i) => i["page"] as Widget).toList();
  final List<int> historyPath = [0];

  @override
  Widget build(BuildContext context) {
    final avatar = Hero(
        tag: 'avatar',
        child: GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed("/user/home");
            },
            child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: CircleAvatar(
                  radius: 26.0,
                  backgroundImage: NetworkImage(
                      "http://81.70.89.25:9090/static/2022/June/3/3aec5963210a8fb71b64b1ed3a552d71.jpg"),
                ))));

    return DefaultPageLayout(
        sidebar: DefaultDesktopSideBar(
          configs: sidebarConfig,
          topper: [avatar],
          bkColor: const Color.fromARGB(255, 255, 182, 25),
          iconDefaultColor: Colors.white,
          iconActiveColor: const Color.fromARGB(255, 255, 111, 0),
          onChanged: (idx) {
            setState(() {
              historyPath.add(idx);
            });
          },
        ),
        child: IndexedStack(
          index: historyPath.last,
          children: pages,
        ));
  }
}
