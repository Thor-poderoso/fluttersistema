import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainSreen extends StatelessWidget{
  const MainSreen({super.key});

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
                    child: Image.asset("../../assets/images/logo.png"),
                  ),
                  ListTile(
                  leading: SvgPicture.asset("../../rassets/icons/menu_dashbord.svg", 
                  color: Colors.white54,
                  height: 16,
                  ),
                  title: const Text(
                    "Dashboard",
                    style: TextStyle(color: Colors.white54),
                    ),
                  ),
              ],
              ),
            ),
              Expanded(
                flex: 5,
                child: Container(
                color:  Colors.blue, 
              ),
            ),
          ],
        )
        )
    );
  }
}