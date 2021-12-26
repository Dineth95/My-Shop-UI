import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:myshop_ui/routes/router.gr.dart';

class CartWidget extends StatelessWidget {
  const CartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 50,
      right: 0,
      child: InkWell(
        onTap: () {
          context.router.push(const CartRoute());
        },
        child: Container(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text("\$268.97",
                    style: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                        fontWeight: FontWeight.normal)),
                Icon(
                  Icons.shopping_cart_outlined,
                  size: 20,
                  color: Colors.white,
                )
              ],
            ),
            width: 90,
            height: 50,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20)),
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF433452),
                    // Color(0xFF433452),
                    // bottomContainer,
                    Color(0xFF785693)
                  ],
                  begin: FractionalOffset(0.0, 0.0),
                  end: FractionalOffset(1.0, 0.0),
                  stops: [0.0, 1.0],
                ))),
      ),
    );
  }
}
