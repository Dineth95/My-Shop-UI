import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:myshop_ui/routes/router.gr.dart';

class BottomModalSheet extends StatelessWidget {
  const BottomModalSheet(
      {Key? key, required this.titleList, required this.title})
      : super(key: key);

  final List<String> titleList;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(bottom: 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: const TextStyle(
                    fontSize: 18,
                    color: Color(0xFF433452),
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            flex: 1,
            child: ListView(
              children: titleList
                  .map((title) => Padding(
                        padding: const EdgeInsets.only(
                            left: 25, top: 10, bottom: 10),
                        child: GestureDetector(
                            onTap: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) => CatalogueProductsPage(
                              //             title: title,
                              //           )),
                              // );
                              context.router
                                  .push(CatalogueProductsRoute(title: title));
                            },
                            child: Text(title)),
                      ))
                  .toList(),
            ),
          )
        ],
      ),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
    );
  }
}
