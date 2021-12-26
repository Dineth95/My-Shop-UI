import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class DemoBottomAppBar extends StatelessWidget {
  const DemoBottomAppBar({
    Key? key,
    this.fabLocation = FloatingActionButtonLocation.endDocked,
    this.shape = const CircularNotchedRectangle(),
  }) : super(key: key);

  final FloatingActionButtonLocation fabLocation;
  final NotchedShape? shape;

  static final List<FloatingActionButtonLocation> centerLocations =
      <FloatingActionButtonLocation>[
    FloatingActionButtonLocation.centerDocked,
    FloatingActionButtonLocation.centerFloat,
  ];

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: shape,
      child: IconTheme(
        data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.home,
                    color: Color(0xFF433452),
                  ),
                  onPressed: () {},
                ),
                const Text('Home',
                    style: TextStyle(
                        fontSize: 25,
                        color: Color(0xFFeae3ed),
                        fontWeight: FontWeight.bold))
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(Icons.grid_view, color: Color(0xFF433452)),
                  onPressed: () {},
                ),
                const Text('catalogue',
                    style: TextStyle(
                        fontSize: 25,
                        color: Color(0xFFeae3ed),
                        fontWeight: FontWeight.bold))
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(Icons.favorite_border_sharp,
                      color: Color(0xFF433452)),
                  onPressed: () {},
                ),
                const Text('Favorite'),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(Icons.person_outlined,
                      color: Color(0xFF433452)),
                  onPressed: () {},
                ),
                const Text('Profile'),
              ],
            ),
            const SizedBox(
              width: 70,
            ),
          ],
        ),
      ),
    );
  }
}

class DemoBottomTabBar extends StatelessWidget {
  const DemoBottomTabBar({
    Key? key,
    this.fabLocation = FloatingActionButtonLocation.endDocked,
    this.shape = const CircularNotchedRectangle(),
    this.tabsRouter,
    this.onTap,
    this.tabController
  }) : super(key: key);

  final FloatingActionButtonLocation fabLocation;
  final NotchedShape? shape;
  final TabsRouter? tabsRouter;
  final Function? onTap;
  final TabController? tabController;

  static final List<FloatingActionButtonLocation> centerLocations =
      <FloatingActionButtonLocation>[
    FloatingActionButtonLocation.centerDocked,
    FloatingActionButtonLocation.centerFloat,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 70),
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20))),
      child: TabBar(
        controller: tabController,
        indicatorColor: const Color(0xFF433452),
        padding: const EdgeInsets.only(bottom: 35),
        onTap: (index){
          tabsRouter!.setActiveIndex(index);
        },
        tabs: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Icon(
                Icons.home,
                color: Color(0xFF433452),
              ),
              Text('Home',
                  style: TextStyle(
                      fontSize: 9,
                      color: Color(0xFF433452),
                      fontWeight: FontWeight.bold))
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Icon(Icons.grid_view, color: Color(0xFF433452)),
              Text('catalogue',
                  style: TextStyle(
                      fontSize: 9,
                      color: Color(0xFF433452),
                      fontWeight: FontWeight.bold))
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Icon(Icons.favorite_border_sharp, color: Color(0xFF433452)),
              Text('Favorite',
                  style: TextStyle(
                      fontSize: 9,
                      color: Color(0xFF433452),
                      fontWeight: FontWeight.bold)),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Icon(Icons.person_outlined, color: Color(0xFF433452)),
              Text('Profile',
                  style: TextStyle(
                      fontSize: 9,
                      color: Color(0xFF433452),
                      fontWeight: FontWeight.bold)),
            ],
          ),
          // const SizedBox(
          //   width: 0,
          //   height: 0,
          // ),
        ],
      ),
    );
  }
}
