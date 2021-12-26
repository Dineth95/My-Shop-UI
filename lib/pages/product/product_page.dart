import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:myshop_ui/pages/Intro/colors.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Expanded(
              flex: 1,
              child: Image.network(
                  "https://m.media-amazon.com/images/I/719aaFwygIL.jpg")),
          Expanded(
              flex: 1,
              child: Column(
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  Row(mainAxisSize: MainAxisSize.max, children: [
                    const SizedBox(
                      width: 20,
                    ),
                    ...List.generate(
                        5,
                        (index) => Icon(
                              Icons.star,
                              color: Colors.yellow.shade900,
                              size: 12,
                            )),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "8 reviews",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.normal,
                          fontSize: 10),
                    ),
                    const Spacer(),
                    const Text("In Stock",
                        style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 10)),
                    const SizedBox(
                      width: 20,
                    )
                  ]),
                  const SizedBox(
                    height: 15,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Text(
                        "Women's Banarasi Silk Gown Model One Piece Maxi Long Dress Traditional Full Length Sungudi Anarkali Long Frock for Women Readymade Fullstiched Gaun"),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Text(
                        "\$89.99",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.0, bottom: 10),
                      child: Text(
                        "Colors",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.normal,
                            fontSize: 12),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.10,
                        height: MediaQuery.of(context).size.width * 0.10,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade800),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: const Image(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://www.mangaldeep.co.in/image/cache/data/teal-color-net-long-dresses-for-women-35642-800x1100.jpg'),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.10,
                        height: MediaQuery.of(context).size.width * 0.10,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade800),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: const Image(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://www.mangaldeep.co.in/image/cache/data/teal-color-net-long-dresses-for-women-35642-800x1100.jpg'),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.10,
                        height: MediaQuery.of(context).size.width * 0.10,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade800),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: const Image(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://www.mangaldeep.co.in/image/cache/data/teal-color-net-long-dresses-for-women-35642-800x1100.jpg'),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.10,
                        height: MediaQuery.of(context).size.width * 0.10,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade800),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: const Image(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://www.mangaldeep.co.in/image/cache/data/teal-color-net-long-dresses-for-women-35642-800x1100.jpg'),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.10,
                        height: MediaQuery.of(context).size.width * 0.10,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade800),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: const Image(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://www.mangaldeep.co.in/image/cache/data/teal-color-net-long-dresses-for-women-35642-800x1100.jpg'),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.10,
                        height: MediaQuery.of(context).size.width * 0.10,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade800),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: const Image(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://www.mangaldeep.co.in/image/cache/data/teal-color-net-long-dresses-for-women-35642-800x1100.jpg'),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.0, bottom: 10),
                      child: Text(
                        "Sizes",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.normal,
                            fontSize: 12),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.10,
                        height: MediaQuery.of(context).size.width * 0.10,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                        child: const Center(child: Text('XXS')),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.10,
                        height: MediaQuery.of(context).size.width * 0.10,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                        child: const Center(child: Text('XS')),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.10,
                        height: MediaQuery.of(context).size.width * 0.10,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                        child: const Center(child: Text('S')),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.10,
                        height: MediaQuery.of(context).size.width * 0.10,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                        child: const Center(child: Text('M')),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.10,
                        height: MediaQuery.of(context).size.width * 0.10,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                        child: const Center(child: Text('L')),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.10,
                        height: MediaQuery.of(context).size.width * 0.10,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                        child: const Center(child: Text('XL')),
                      ),
                    ],
                  )
                ],
              ))
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () {
                  context.router.pop();
                },
                icon: Icon(
                  Icons.keyboard_arrow_left,
                  color: Colors.grey.shade600,
                )),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side:
                        BorderSide(color: startedButtonColor.withOpacity(0.9)),
                  ),
                  primary: startedButtonColor.withOpacity(0.9)),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                child: Text('Add to Cart',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    )),
              ),
            ),
            IconButton(
                icon: Icon(
                  Icons.favorite_border_outlined,
                  color: Colors.grey.shade600,
                ),
                onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
