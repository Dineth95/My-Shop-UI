import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:myshop_ui/common_widgets/app_bar.dart';
import 'package:myshop_ui/common_widgets/cart_widget.dart';
import 'package:myshop_ui/common_widgets/search_bar.dart';
import 'package:myshop_ui/pages/catalogue/widgets/catalog_product_item.dart';
import 'package:myshop_ui/pages/catalogue/widgets/rounded_button.dart';
import 'package:myshop_ui/routes/router.gr.dart';

class CatalogueProductsPage extends StatelessWidget {
  CatalogueProductsPage({Key? key, @PathParam('title') required this.title})
      : super(key: key);

  final String title;

  final List<String> imageList = [
    "https://www.coverstory.co.in/media/cms/home/category/work.jpg",
    "https://assets.ajio.com/medias/sys_master/root/20210806/AdAG/610c83ec7cdb8cb824ee741b/cottinfab_pink_square-neck_indian_print_tiered_dress_.jpg",
    "https://assets.ajio.com/medias/sys_master/root/20210420/3JCy/607e96b8f997dd7b64b7aafd/omask_purple_floral_print_round-neck_gown_dress.jpg",
    "https://assets.ajio.com/medias/sys_master/root/20210403/TmHE/6068bf437cdb8c1f147b3bb9/hello_design_black_polka-dot_print_a-line_maxi_dress.jpg",
    "https://assets.ajio.com/medias/sys_master/root/20211210/oIjv/61b27273f997ddf8f14a15b9/encrustd_blue_tiered_v-neck_empire_dress.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            ///app bar
            CommonAppBar(
                title: title,
                filterTap: () {
                  context.router.push(const FilterRoute());
                },
                isFilter: true),

            const SizedBox(
              height: 30,
            ),
            Expanded(
              flex: 1,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(
                    left: 20, top: 10, bottom: 10, right: 20),
                children: [
                  RoundedButton(title: "All", function: () {}),
                  RoundedButton(title: "title 1", function: () {}),
                  RoundedButton(title: "title 2", function: () {}),
                  RoundedButton(title: "title 3", function: () {}),
                  RoundedButton(title: "title 4", function: () {}),
                ],
              ),
            ),
            Row(children: [
              const SizedBox(
                width: 25,
              ),
              const Text(
                "166 items",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF785693)),
              ),
              const Spacer(),
              TextButton(
                  onPressed: () {},
                  child: const Text("Sort by:",
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey))),
              const SizedBox(
                width: 20,
              ),
            ]),
            const SizedBox(
              height: 5,
            ),

            Expanded(
              flex: 8,
              child: GridView.count(
                physics: const ScrollPhysics(),
                padding: const EdgeInsets.symmetric(vertical: 5),
                crossAxisCount: 2,
                crossAxisSpacing: 2,
                children: List.generate(5, (index) {
                  return InkWell(
                    onTap: () {
                      context.router.push(const ProductRoute());
                    },
                    child: CatalogueProductListItem(
                      imageUrl: imageList[index],
                      isFavourite: true,
                      price: '\$49',
                      description: "Test Description",
                      discountAvailable: false,
                      discountPrice: '\$19',
                    ),
                  );
                }),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
          ],
        ),

        ///search bar
        const Positioned(top: 77, right: 10, left: 10, child: SearchBar()),

        const CartWidget()
      ],
    );
  }
}
