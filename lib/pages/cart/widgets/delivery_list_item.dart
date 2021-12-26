import 'package:flutter/material.dart';

class DeliveryListItem extends StatelessWidget {
  const DeliveryListItem({Key? key, required this.imageUrl}) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.all(15),
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Image.network(
              imageUrl,
              width: 60,
              height: 20,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text("\$15",
                style: TextStyle(
                    fontSize: 10,
                    color: Color(0xFF433452),
                    fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 5,
            ),
            const Text("1-2 days",
                style: TextStyle(
                    fontSize: 10,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal))
          ],
        ),
      ),
    );
  }
}
