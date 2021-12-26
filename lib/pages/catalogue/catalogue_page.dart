import 'package:flutter/material.dart';
import 'package:myshop_ui/common_widgets/app_bar.dart';
import 'package:myshop_ui/common_widgets/cart_widget.dart';
import 'package:myshop_ui/common_widgets/search_bar.dart';

import 'widgets/category_list_item.dart';

class CataloguePage extends StatelessWidget {
  CataloguePage({Key? key}) : super(key: key);

  final List<String> titlelist = [
    "Women's fashion",
    "Men's Fashion",
    "Phones",
    "Computers",
    "Smart Phone",
    "Arts & Crafts"
  ];
  final List<String> imageList = [
    "https://www.coverstory.co.in/media/cms/home/category/work.jpg",
    "https://i.pinimg.com/236x/5e/9a/b0/5e9ab0ff6415b7b59bc2c808590e3624.jpg",
    "https://i.pcmag.com/imagery/reviews/01pr6hmgqz7A5wX5hSQWqRs-1.fit_lim.size_625x365.v1632764534.jpg",
    "https://cdn.britannica.com/77/170477-050-1C747EE3/Laptop-computer.jpg",
    "https://media.wired.com/photos/610050dc8eb98ab033ce45df/master/w_2400,h_1800,c_limit/Gear-Nokia-G20.jpg",
    "https://www.barcelona-metropolitan.com/downloads/27266/download/7.-W.-Morris.jpg?cb=65750e0422ea078bfd4c5926d0f2e94d&w=640"
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            ///app bar
            CommonAppBar(
              title: "Catalogue",
              filterTap: () {},
              isFilter: false,
            ),

            const SizedBox(
              height: 20,
            ),

            SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.72,
                child: ListView(
                  //padding: const EdgeInsets.only(bottom: 300),
                  children: List.generate(
                      6,
                      (index) => CatalogueListItem(
                            title: titlelist[index],
                            imageUrl: imageList[index],
                          )),
                )),
          ],
        ),

        ///search bar
        const Positioned(top: 77, right: 10, left: 10, child: SearchBar()),

        const CartWidget()
      ],
    );
  }
}
