import 'package:flutter/material.dart';
import 'package:myshop_ui/common_widgets/app_bar.dart';
import 'package:myshop_ui/common_widgets/cart_widget.dart';
import 'package:myshop_ui/pages/catalogue/widgets/catalog_product_item.dart';

class FavouritePage extends StatelessWidget {
  FavouritePage({Key? key}) : super(key: key);

  final List<String> imageList = [
    "https://assets.ajio.com/medias/sys_master/root/20210222/Gik9/6033b476aeb269698169365e/fable_street_maroon_cowl_neck_3_4th_sleeves_a-line_dress.jpg",
    "https://assets.ajio.com/medias/sys_master/root/20210403/agZ9/60689410f997dd7b6461534b/hello_design_beige_a-line_dress_with_ruffle_detail.jpg",
    "https://assets.ajio.com/medias/sys_master/root/20211103/sm8B/6181a8ccaeb2690110b7ed7a/fig_black_floral_print_fit_&_flare_dress.jpg",
    "https://assets.ajio.com/medias/sys_master/root/20210831/zNk6/612d2a227cdb8cb8240d6580/hello_design_maroon_fit_&_flare_dress_with_lace_panel.jpg",
    "https://assets.ajio.com/medias/sys_master/root/20210227/w3j6/6039b0fd7cdb8c1f144fe1c5/ethnovogue_green_floral_print_shirt_dress.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            ///app bar
            CommonAppBar(title: "Favourite", filterTap: () {}, isFilter: true),

            const SizedBox(
              height: 20,
            ),
            Row(children: [
              const SizedBox(
                width: 25,
              ),
              const Text(
                "5 items",
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
                    onTap: () {},
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
        const CartWidget()
      ],
    );
  }
}
