import 'package:flutter/material.dart';
import 'package:project1/screens/home/components/categories.dart';
import 'package:project1/models/product.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            "Women",
            style: Theme.of(context).textTheme.headline5?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        const Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: GridView.builder(
                itemCount: products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: ((context, index) => itemCard(
                      product1: products[index],
                      press: () {},
                    ))),
          ),
        )
      ],
    );
  }
}

class itemCard extends StatelessWidget {
  const itemCard({
    Key? key,
    required this.product1,
    required this.press,
  }) : super(key: key);
  final product product1;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(20.0),
            height: 180,
            width: 160,
            decoration: BoxDecoration(
                color: product1.color,
                borderRadius: BorderRadius.circular(16.0)),
            child: Image.asset('${product1.image}'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Text(products[0].title,
                style: TextStyle(color: Colors.black45)),
          ),
          Text("${product1.price}",
              style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
