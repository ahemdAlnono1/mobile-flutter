import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project1/screens/home/components/body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset('assets/icons/back.svg'),
          onPressed: () {},
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/search.svg',
                  color: Colors.black54)),
          SizedBox(
            width: 5.9,
          ),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/cart.svg',
                  color: Colors.black54)),
          SizedBox(
            width: 14.0,
          )
        ],
      ),
      body: Body(),
    );
  }
}
