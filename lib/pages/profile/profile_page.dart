import 'package:flutter/material.dart';
import 'package:myshop_ui/common_widgets/cart_widget.dart';
import 'package:myshop_ui/pages/profile/widgets/list_item.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.17,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    const CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 27,
                        backgroundImage: NetworkImage(
                            "https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg"),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Dineth Prabashwara",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "+94 1112312334",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.normal),
                        )
                      ],
                    ),
                    const Spacer(),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      elevation: 5,
                      child: const Padding(
                        padding: EdgeInsets.all(7.0),
                        child: Icon(
                          Icons.edit,
                          color: Color(0xFF785693),
                          size: 25,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 2,
                    )
                  ],
                ),
                decoration: const BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(170)),
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
            const SizedBox(
              height: 10,
            ),
            const ProfileListItem(
              title: "Shipping Addresses",
              icon: Icon(
                Icons.location_on,
                color: Color(0xFF433452),
              ),
            ),
            const ProfileListItem(
              title: "Payment Methods",
              icon: Icon(
                Icons.credit_card,
                color: Color(0xFF433452),
              ),
            ),
            const ProfileListItem(
              title: "Orders",
              icon: Icon(
                Icons.notes,
                color: Color(0xFF433452),
              ),
            ),
            const ProfileListItem(
              title: "Favourite",
              icon: Icon(
                Icons.favorite_outline,
                color: Color(0xFF433452),
              ),
            ),
            const ProfileListItem(
              title: "Settings",
              icon: Icon(
                Icons.settings,
                color: Color(0xFF433452),
              ),
            ),
            const ProfileListItem(
              title: "Log Out",
              icon: Icon(
                Icons.logout,
                color: Color(0xFF433452),
              ),
            ),
            //Align(alignment: Alignment.bottomLeft,)
          ],
        ),
        // Positioned(
        //   bottom: 50,
        //   right: 0,
        //   child: Container(
        //       child: const Text("", style: TextStyle(color: Colors.white)),
        //       width: 90,
        //       height: 50,
        //       decoration: const BoxDecoration(
        //           borderRadius: BorderRadius.only(
        //               topLeft: Radius.circular(20),
        //               bottomLeft: Radius.circular(20)),
        //           gradient: LinearGradient(
        //             colors: [
        //               Color(0xFF433452),
        //               // Color(0xFF433452),
        //               // bottomContainer,
        //               Color(0xFF785693)
        //             ],
        //             begin: FractionalOffset(0.0, 0.0),
        //             end: FractionalOffset(1.0, 0.0),
        //             stops: [0.0, 1.0],
        //           ))),
        // ),
        const CartWidget()
      ],
    );
  }
}
