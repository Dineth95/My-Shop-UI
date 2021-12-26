import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class MyShopAppBar extends StatelessWidget {
  const MyShopAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.13,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: 10,
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              )),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "My",
                style: TextStyle(
                    fontSize: 15,
                    color: Color(0xFFa0794a),
                    fontWeight: FontWeight.bold),
              ),
              Text("Shop",
                  style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFFeae3ed),
                      fontWeight: FontWeight.bold))
            ],
          ),
          const Spacer(),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
                color: Colors.white,
              )),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      decoration: const BoxDecoration(color: Color(0xFF433452)),
    );
  }
}

class CommonAppBar extends StatelessWidget {
  const CommonAppBar(
      {Key? key,
      required this.title,
      required this.isFilter,
      required this.filterTap})
      : super(key: key);

  final String title;
  final bool isFilter;
  final void Function() filterTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.13,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: 10,
          ),
          context.router.canPopSelfOrChildren
              ? IconButton(
                  onPressed: () {
                    context.router.pop();
                  },
                  icon: const Icon(
                    Icons.keyboard_arrow_left,
                    color: Colors.white,
                  ))
              : IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.white,
                  )),
          const Spacer(),
          Text(
            title,
            style: const TextStyle(
                fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          isFilter
              ? IconButton(
                  onPressed: filterTap,
                  icon: const Icon(
                    Icons.equalizer,
                    color: Colors.white,
                  ))
              : IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notifications,
                    color: Colors.white,
                  )),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      decoration: const BoxDecoration(color: Color(0xFF433452)),
    );
  }
}
