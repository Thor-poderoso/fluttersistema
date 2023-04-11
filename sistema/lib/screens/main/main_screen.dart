import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainSreen extends StatelessWidget {
  const MainSreen({super.key});

  static const dir = "../../assets";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Row(
      children: [
        Expanded(
          child: Column(
            children: [
              DrawerHeader(
                child: Image.asset("$dir/images/logo.png"),
              ),
              DrawerListTile(
                title: "Dashboard",
                svgSrc: "$dir/icons/menu_dashbord.svg",
                press: () {},
              ),
            ],
          ),
        ),
        Expanded(
          flex: 5,
          child: Container(
            color: Colors.blue,
          ),
        ),
      ],
    )));
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.title,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        color: Colors.white54,
        height: 16,
      ),
      title: Text(
        title,
        style: const TextStyle(color: Colors.white54),
      ),
    );
  }
}
