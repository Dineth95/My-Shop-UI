import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:myshop_ui/routes/router.gr.dart';
import 'package:myshop_ui/common_widgets/button.dart';
import 'package:myshop_ui/pages/cart/widgets/cart_product_item.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.12,
            padding: const EdgeInsets.only(top: 15),
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
                const Text(
                  "Cart",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                const Text(
                  "Delete",
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.normal),
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
            decoration: const BoxDecoration(color: Color(0xFF433452)),
          ),

          /// list
          const SizedBox(
            height: 15,
          ),
          const CartproductItem(
            title:
                "FlipkartIQRAAR Women Fit and \nFlare Red Dress - \nBuy IQRAAR Women Fit and Flare Red Dress \nOnline at Best Prices in India",
            imageUrl:
                "https://rukminim1.flixcart.com/image/714/857/klwmufk0/dress/l/z/j/s-36iqgwnred-iqraar-original-imagyxcfzrbaygqc.jpeg?q=50",
            price: "\$89.99",
          ),
          const CartproductItem(
            title: "Accordion Pleated Flared Dress",
            imageUrl:
                "https://assets.ajio.com/medias/sys_master/root/20211124/OlLc/619e1828aeb2690110d618ef/u_&_f_maroon_accordion_pleated_flared_dress.jpg",
            price: "\$98.99",
          ),
          const CartproductItem(
            title: "Checked A-line Dress with Insert Pockets",
            imageUrl:
                "https://assets.ajio.com/medias/sys_master/root/20210404/YZth/6069e5e3aeb269a9e34c109a/fable_street_black_checked_a-line_dress_with_insert_pockets.jpg",
            price: "\$79.99",
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        height: 150,
        child: Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Total Price",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "\$268.97",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            CommonButton(
              text: "Check Out",
              onPressed: () {
                context.router.push(const CheckoutRoute());
              },
            )
          ],
        ),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10))),
      ),
    );
  }
}
