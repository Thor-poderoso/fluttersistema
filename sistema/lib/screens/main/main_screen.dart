import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sistema/responsive.dart';
import 'package:sistema/screens/dashboard/dashboard_screen.dart';

import 'components/side_menu.dart';

class MainSreen extends StatelessWidget {
  const MainSreen({super.key});

  static const dir = "../../assets/images";
  static const dirIcon = "../../assets/icons";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
        body: SafeArea(
            child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (Responsive.isDesktop(context)) const Expanded(
          child: SideMenu(dir: dir, dirIcon: dirIcon),
        ),
        Expanded(
          flex: 5,
          child: Container(
            key: key,
            child: const DashboardScreen(),
          ),
        ),
      ],
    )));
  }
}
