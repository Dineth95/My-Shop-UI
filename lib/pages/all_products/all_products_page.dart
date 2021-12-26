import 'package:flutter/material.dart';
import 'package:myshop_ui/common_widgets/app_bar.dart';
import 'package:myshop_ui/common_widgets/cart_widget.dart';
import 'package:myshop_ui/pages/all_products/widgets/catalogue_list_item.dart';
import 'package:myshop_ui/pages/all_products/widgets/banner_widget.dart';
import 'package:myshop_ui/pages/all_products/widgets/featured_product_list_item.dart';
import 'package:myshop_ui/common_widgets/search_bar.dart';

class AllProductsPage extends StatelessWidget {
  const AllProductsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            ///app bar
            const MyShopAppBar(),

            const SizedBox(
              height: 40,
            ),

            ///products view-featured
            BannerProductsWidget(),

            const SizedBox(
              height: 20,
            ),

            ///catelogue
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Catalogue",
                    style: TextStyle(
                        color: Color(0xFF433452),
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        Text(
                          "See All",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.w700),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.grey,
                          size: 15,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),

            Expanded(
              flex: 1,
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: const [
                  CatalogueListItem(
                    url:
                        "https://media.istockphoto.com/photos/street-style-shoot-woman-on-pink-wall-swag-girl-wearing-jeans-jacket-picture-id1284839442",
                    title: "Women's Fashion",
                  ),
                  CatalogueListItem(
                    url:
                        "https://media.istockphoto.com/photos/young-handsome-man-in-classic-suit-over-the-lake-background-picture-id1300966679",
                    title: "Men's Fashion",
                  ),
                  CatalogueListItem(
                    url:
                        "https://media.istockphoto.com/photos/top-view-mockup-image-of-a-mans-hand-holding-white-mobile-phone-with-picture-id1135248169",
                    title: "Phones",
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            ///Featured Products
            const ListTile(
              leading: Text(
                "Featured",
                style: TextStyle(
                    color: Color(0xFF433452),
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
            ),

            const SizedBox(
              height: 15,
            ),

            Expanded(
              flex: 3,
              child: ListView(
                //padding: const EdgeInsets.symmetric(horizontal: 10),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: const [
                  FeaturedProductListItem(
                    imageUrl:
                        "https://www.coverstory.co.in/media/cms/home/category/work.jpg",
                    isFavourite: true,
                    price: '\$49',
                    description: "Test Description",
                    discountAvailable: false,
                    discountPrice: '\$19',
                  ),
                  FeaturedProductListItem(
                    imageUrl:
                        "https://i.pinimg.com/originals/6b/d4/81/6bd4810dce6778a91c8cd35ae20b9e20.jpg",
                    isFavourite: true,
                    price: '\$49',
                    description: "Test Description",
                    discountAvailable: false,
                    discountPrice: '\$19',
                  )
                ],
              ),
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
