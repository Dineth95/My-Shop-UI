import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:myshop_ui/common_widgets/button.dart';
import 'package:myshop_ui/pages/cart/widgets/delivery_list_item.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);

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
                  "Checkout",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                const SizedBox(
                  width: 40,
                ),
              ],
            ),
            decoration: const BoxDecoration(color: Color(0xFF433452)),
          ),

          ///shipping address
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, bottom: 20),
            child: Row(
              children: const [
                Icon(
                  (Icons.location_on_outlined),
                  size: 25,
                  color: Color(0xFF433452),
                ),
                SizedBox(
                  width: 15,
                ),
                Text("Shipping Address",
                    style: TextStyle(
                        fontSize: 15,
                        color: Color(0xFF433452),
                        fontWeight: FontWeight.bold))
              ],
            ),
          ),
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            elevation: 2,
            child: Container(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: const [
                      Text("Oleh Chaabanov",
                          style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF433452),
                              fontWeight: FontWeight.bold)),
                      Spacer(),
                      Text("Change",
                          style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF433452),
                              fontWeight: FontWeight.bold)),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                        color: Color(0xFF433452),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text("225 Highland Ave",
                      style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF433452),
                          fontWeight: FontWeight.normal)),
                  const Text("Springfield, IL 62704, USA",
                      style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF433452),
                          fontWeight: FontWeight.normal)),
                ],
              ),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15))),
            ),
          ),

          ///Delivery
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, bottom: 10),
            child: Row(
              children: const [
                Icon(
                  (Icons.car_rental),
                  size: 25,
                  color: Color(0xFF433452),
                ),
                SizedBox(
                  width: 15,
                ),
                Text("Delivery Method",
                    style: TextStyle(
                        fontSize: 15,
                        color: Color(0xFF433452),
                        fontWeight: FontWeight.bold))
              ],
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: const [
              DeliveryListItem(
                imageUrl:
                    "https://cdn.phenompeople.com/CareerConnectResources/DHL1GLOBAL/en_global/mobile/assets/images/v-1628683611342-header_logo.png",
              ),
              DeliveryListItem(
                imageUrl:
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/FedEx_Express.svg/1200px-FedEx_Express.svg.png",
              ),
              DeliveryListItem(
                imageUrl: "https://shipperhq.com/images/carriers/app-usps.png",
              )
            ],
          ),

          ///Payment
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, bottom: 20),
            child: Row(
              children: const [
                Icon(
                  (Icons.credit_card),
                  size: 25,
                  color: Color(0xFF433452),
                ),
                SizedBox(
                  width: 15,
                ),
                Text("Payment Method",
                    style: TextStyle(
                        fontSize: 15,
                        color: Color(0xFF433452),
                        fontWeight: FontWeight.bold))
              ],
            ),
          ),
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            elevation: 2,
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Image.network(
                    "https://www.opportunitiesforafricans.com/wp-content/uploads/2019/03/2019_mastercard-graduate_development-programme-2019.jpg",
                    width: 50,
                    height: 50,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(".... .... .... 5678",
                      style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF433452),
                          fontWeight: FontWeight.bold)),
                  const Spacer(),
                  const Text("Change",
                      style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF433452),
                          fontWeight: FontWeight.bold)),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: Color(0xFF433452),
                  )
                ],
              ),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15))),
            ),
          ),
        ],
      ),

      ///prices
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        height: 230,
        child: Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Items",
                  style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "\$268.97",
                  style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Delivery",
                  style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "\$18",
                  style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
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
                  "\$286.97",
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
              text: "Pay",
              onPressed: () {},
            )
          ],
        ),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15))),
      ),
    );
  }
}
