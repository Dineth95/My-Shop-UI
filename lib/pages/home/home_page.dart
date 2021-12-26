import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:myshop_ui/pages/home/widgets/bottom_app_bar.dart';
import 'package:myshop_ui/routes/router.gr.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    controller = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        AllProductsRouter(),
        CatalogueRouter(),
        FavouriteRouter(),
        ProfileRouter()
      ],
      extendBody: true,
      bottomNavigationBuilder: (_, tabsRouter) {
        return DemoBottomTabBar(
          tabsRouter: tabsRouter,
          fabLocation: FloatingActionButtonLocation.endDocked,
          shape: null,
          tabController: controller,
        );
      },
    );
  }
}
