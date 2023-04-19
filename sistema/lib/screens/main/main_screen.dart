import 'package:flutter/material.dart';
import 'package:sistema/screens/main/dashboard/dashboard_screen.dart';

import 'components/side_menu.dart';

class MainSreen extends StatelessWidget {
  const MainSreen({super.key});

  static const dir = "../../assets/images";
  static const dirIcon = "../../assets/icons";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Expanded(
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
